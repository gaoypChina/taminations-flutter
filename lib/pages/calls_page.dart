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

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart' as fm;
import 'package:provider/provider.dart' as pp;

import '../color.dart';
import '../level_data.dart';
import '../main.dart';
import '../tam_utils.dart';
import '../title_bar.dart';
import 'screen.dart';

class CallsPage extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    return Screen(
      child: pp.Consumer2<TitleModel,TamState>(
        builder: (context,titleModel,tamState,_) {
          titleModel.title = LevelData.find(tamState.level).name;
          return CallsFrame();
        }
      ),
    );
  }
}


//  CallsFrame contains a list or grid of calls
//  and a search entry above to filter the calls
class CallsFrame extends fm.StatefulWidget {

  @override
  _CallsFrameState createState() => _CallsFrameState();

}

class _CallsFrameState extends fm.State<CallsFrame> {

  String search = '';

  @override
  //  Build list or grid of calls
  fm.Widget build(fm.BuildContext context) {
    //  Return column of 2 items, search field and list/grid of calls
    return fm.Column(
        children: [
          fm.TextField(
            decoration: fm.InputDecoration.collapsed(
                filled: true,
                fillColor: Color.WHITE,
                hintText: 'Search calls'),
            enableSuggestions: false,
            style: fm.TextStyle(fontSize: 24),
            onChanged: (value) {
              setState(() {
                search = value.toLowerCase();
              });
            },
          ),
          fm.Expanded(
            //  Test to see if we are landscape or portrait
            //  Landscape gets a grid, portrait gets a list
              child: pp.Consumer<TamState>(
                builder: (context,tamState,_) {
                  //  Get the initial list of calls to show
                  final levelDatum = LevelData.find(tamState.level);
                  final showLevel = RegExp('(bms|adv|cha|all)').hasMatch(levelDatum.dir);
                  final calls = TamUtils.calldata.where((element) =>
                      levelDatum.selector(element.link)).toList();
                  //  Do any search to filter the calls
                  final callsSearched = calls.where((call) => call.title.toLowerCase().contains(search)).toList();
                  print('Calls searched has ${callsSearched.length} calls');
                  return fm.OrientationBuilder(
                    builder: (context, orientation) {
                      if (orientation == fm.Orientation.landscape) {
                        return fm.GridView.builder(
                            scrollDirection: fm.Axis.horizontal,
                            gridDelegate: fm.SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 40,
                                mainAxisSpacing: 1,
                                childAspectRatio: 0.1
                            ),
                            itemCount: callsSearched.length,
                            itemBuilder:
                            (context,index) => itemBuilder(context,index,callsSearched,showLevel),
                        );
                      }
                      else {
                        return fm.ListView.builder(
                          itemCount: callsSearched.length,
                           itemBuilder: (context,index) => itemBuilder(context,index,callsSearched,showLevel),
                        );
                      }
                    }
                  );
                }
              ))
        ]);
  }

  //  Builder for one item of the list or grid
  fm.Widget itemBuilder(fm.BuildContext context, int index, List<CallListDatum> callsSearched, bool showLevel) {
    return fm.Container(
      decoration: fm.BoxDecoration(
          border: fm.Border(top: fm.BorderSide(width: 1, color: Color.BLACK))),
     // padding: FM.EdgeInsets.only(left: 20.0, top:4, bottom:4),
      child: pp.Consumer<TamState>(
        builder: (context,tamState,_) =>
         fm.Material(
          //  Color the item according the the level
          color: LevelData.find(callsSearched[index].link).color,
          child: fm.InkWell(
            highlightColor: LevelData.find(callsSearched[index].link).color.darker(),
              onTap: () {
                tamState.change(
                    mainPage: MainPage.ANIMLIST,
                    link: callsSearched[index].link
                );
              },
              child:fm.Row(
                children: [
                  fm.Flexible(
                    child: fm.Container(
                        alignment: fm.Alignment.centerLeft,
                        padding: fm.EdgeInsets.only(left: 10.0),
                        child: AutoSizeText(callsSearched[index].title,style: fm.TextStyle(fontSize:
                            20))),
                  ),
                  if (showLevel)
                    fm.Container(
                        alignment: fm.Alignment.topRight,
                        padding: fm.EdgeInsets.only(top:2,right:2),
                        child: fm.Text(LevelData.find(callsSearched[index].link).name)
                  )
                ],
              )
          ),
        ),
      )
    );
  }

}