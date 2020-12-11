/*

  Taminations Square Dance Animations
  Copyright (C) 2020 Brad Christie

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.

*/

import 'package:flutter/material.dart' as fm;
import 'package:provider/provider.dart' as pp;
import 'package:taminations/pages/practice_page.dart';
import 'package:taminations/pages/start_practice_page.dart';

import 'pages/calls_page.dart';
import 'extensions.dart';
import 'pages/level_page.dart';
import 'level_data.dart';
import 'pages/anim_list_page.dart';
import 'pages/animation_page.dart';
import 'pages/first_landscape_page.dart';
import 'pages/settings_page.dart';
import 'pages/second_landscape_page.dart';
import 'settings.dart';
import 'tam_utils.dart';
import 'pages/web_page.dart';
import 'sequencer/sequencer_page.dart';

///  Main routine
void main() {
  fm.runApp(TaminationsApp());
}

//  This class holds state information used to
//  generate the current layout
class TaminationsRoute {

  final String level;  //  if not null, generate Calls page
  final String link;  //  if not null, generate AnimList page
  final int animnum;   //  if >= 0, generate Animation page

  final bool startPractice;  //  show Practice options page
  final bool practice;   //  show Practice page
  final bool sequencer;  //  show Sequencer page
  final bool about;      //  show About page
  final bool settings;   //  show Settings page
  final bool definition; //  show Definition page

  final bool newPage;   // only used by setNewRoutePath

  //  Default parameters generate the layout for the main menu
  TaminationsRoute({
    this.level,
    this.link,
    this.animnum = -1,

    this.startPractice = false,
    this.practice = false,
    this.sequencer = false,
    this.about = false,
    this.settings = false,
    this.definition = false,

    this.newPage = false

  });

  //  Convenience methods to create a new route by
  //  adding onto a previous route
  TaminationsRoute addFrom(TaminationsRoute from) =>
      TaminationsRoute(
          level:from.level ?? level,
          link: from.link ?? link,
          animnum: (from.animnum >= 0) ? from.animnum : animnum,

          startPractice: from.startPractice || startPractice,
          practice: from.practice || practice,
          sequencer: from.sequencer || sequencer,
          definition: from.definition || definition,
          about: from.about || about,
          settings: from.settings || settings);

  TaminationsRoute operator +(TaminationsRoute other) => addFrom(other);

  //  For URL generation
  @override
  String toString() => <String>[
    if (level != null && level.isNotEmpty) 'level=$level',
    if (animnum >= 0) 'animnum=${animnum.d}',
    if (link != null && link.isNotEmpty) 'link=$link',
    if (startPractice) 'startPractice',
    if (practice) 'practice',
    if (sequencer) 'sequencer',
    if (about) 'about',
    if (settings) 'settings',
    if (definition) 'definition'
  ].join('&');

  bool get isBlank => toString().isBlank;

}


//  TaminationsApp is the top-level widget.
//  Here it is just a wrapper for the router and its delegate (below),
//  which does all the work
class TaminationsApp extends fm.StatefulWidget {

  @override
  fm.State<fm.StatefulWidget> createState() => _TaminationsAppState();

}

class _TaminationsAppState extends fm.State<TaminationsApp> {

  final TaminationsRouterDelegate _routerDelegate = TaminationsRouterDelegate();
  final TaminationsRouteInformationParser _routeInformationParser =
      TaminationsRouteInformationParser();

  @override
  fm.Widget build(fm.BuildContext context) {
    //  Wrap the Settings around the top of the program
    //  so everybody has access to them
    return pp.MultiProvider(
      providers: [
        pp.ChangeNotifierProvider(create: (context) => Settings()),
        pp.ChangeNotifierProvider(create: (context) => AnimationState())
      ],
        //  Read initialization files
      child: fm.FutureBuilder<bool>(
        future: TamUtils.init(),
        builder: (context,snapshot) =>
        snapshot.hasData ?
          fm.MaterialApp.router(
            title: 'Taminations',
            routerDelegate: _routerDelegate,
            routeInformationParser: _routeInformationParser,
          ) : fm.Container(),
    ));
  }

  void setPath(TaminationsRoute path) {
    setState(() {
      _routerDelegate.setNewRoutePath(path);
    });
  }

}

//  Router Delegate
//  Handles all requests to change the layout
class TaminationsRouterDelegate extends fm.RouterDelegate<TaminationsRoute>
    with fm.ChangeNotifier, fm.PopNavigatorRouterDelegateMixin<TaminationsRoute> {

  @override
  final fm.GlobalKey<fm.NavigatorState> navigatorKey;
  TaminationsRouterDelegate() : navigatorKey = fm.GlobalKey<fm.NavigatorState>();

  //  History for back navigation
  List<TaminationsRoute> paths = [TaminationsRoute()];
  //  this is necessary for the web URL and back button to work
  @override
  TaminationsRoute get currentConfiguration => paths.last;
  set currentConfiguration(value) {
    paths[paths.length-1] = value;
  }

  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.OrientationBuilder(
        builder: (context, orientation) {
          return fm.Navigator(
              key: navigatorKey,

              //  Pages for landscape - first and second, Sequencer, Practice
              pages: (orientation == fm.Orientation.landscape)
                  ? [ fm.MaterialPage(
                  key: fm.ValueKey('Landscape Page'),
                  child: FirstLandscapePage()
              ),
                if (currentConfiguration?.link?.isNotEmpty ?? false)
                  fm.MaterialPage(
                      key: fm.ValueKey('Landscape Page ' + currentConfiguration.link),
                      child: SecondLandscapePage()
                  ),
                if (currentConfiguration.practice)
                  fm.MaterialPage(
                      key: fm.ValueKey('Start Practice'),
                      child: StartPracticePage()
                  ),
                if (currentConfiguration.practice && currentConfiguration.level != null)
                  fm.MaterialPage(
                      key: fm.ValueKey('Practice'),
                      child: PracticePage()
                  ),
                if (currentConfiguration.sequencer)
                  fm.MaterialPage(
                      key: fm.ValueKey('Sequencer'),
                      child: SequencerPage()
                  ),
              ]

              //  Pages for portrait - Level, Animlist, Animation, Settings, etc
                  : [
                fm.MaterialPage(
                    key: fm.ValueKey('LevelPage'),
                    child: LevelPage()
                ),
                if (currentConfiguration.level != null &&
                    LevelData.find(currentConfiguration.level) != null)
                  fm.MaterialPage(
                      key: fm.ValueKey(currentConfiguration.level),
                      child: CallsPage()
                  ),
                if (currentConfiguration.link?.isNotEmpty ?? false)
                  fm.MaterialPage(
                      key: fm.ValueKey(currentConfiguration.link),
                      child: AnimListPage()
                  ),
                if (currentConfiguration.animnum >= 0 )
                  fm.MaterialPage(
                      key: fm.ValueKey(currentConfiguration.link + ' animation'),
                      child: AnimationPage()
                  ),
                if (currentConfiguration.about)
                  fm.MaterialPage(
                      key: fm.ValueKey('About'),
                      child: WebPage('info/about.html')
                  ),
                if (currentConfiguration.definition)
                  fm.MaterialPage(
                      key: fm.ValueKey(currentConfiguration.link + ' definition'),
                      child: WebPage(currentConfiguration.link)
                  ),
                if (currentConfiguration.settings)
                  fm.MaterialPage(
                      key: fm.ValueKey('Settings'),
                      child: SettingsPage()
                  ),
                if (currentConfiguration.practice)
                  fm.MaterialPage(
                      key: fm.ValueKey('Practice'),
                      child: StartPracticePage()
                  ),
              ],

              //  Standard onPopPage method, required
              onPopPage: (route, result) {
                if (!route.didPop(result)) {
                  return false;
                }
                return true;
              });
        });
  }

  void showPaths(String fromWhere) {
    print('$fromWhere:');
    for (var i=0; i<paths.length; i++) {
      print('    $i ${paths[i]}');
    }
  }

  @override
  Future<bool> popRoute() async {
    if (paths.length > 1) {
      paths.removeLast();
      showPaths('popRoute');
      notifyListeners();
      return true;
   }
    else
      return false;
  }

  @override
  Future<void> setInitialRoutePath(TaminationsRoute configuration) async {
    paths = [TaminationsRoute()];
  }

  @override
  Future<void> setNewRoutePath(TaminationsRoute configuration) async {
    if (configuration != null) {
      print('New configuration: $configuration');
      if (configuration.isBlank)
        popRoute();
      else {
        if (configuration.newPage)
          paths.add(configuration);
        else
          currentConfiguration = configuration;
      }
      notifyListeners();
      showPaths('setNewRoutePath');
    }
    return;
  }
}

//  This class converts an URL to/from the fields in
//  TaminationsRoutePath
//  Used by web browser implementation
class TaminationsRouteInformationParser extends fm.RouteInformationParser<TaminationsRoute> {

  @override
  Future<TaminationsRoute>
  parseRouteInformation(fm.RouteInformation routeInformation) async {
    final params = Uri.parse(routeInformation.location).queryParameters;
    var level = params['level'] ?? '';
    var link = params['link'] ?? '';
    var animnum = int.tryParse(params['animnum'] ?? '-1') ?? -1;
    return TaminationsRoute(level:level,link:link,animnum:animnum);
  }

  @override
  fm.RouteInformation restoreRouteInformation(TaminationsRoute path) {
    var location = path.toString();
    return fm.RouteInformation(location: '/$location');
  }

}




