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
import 'package:taminations/common.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../button.dart';
import '../color.dart';
import 'sequencer_model.dart';

class SequenceFrame extends fm.StatefulWidget {
  @override
  _SequenceFrameState createState() => _SequenceFrameState();
}

class _SequenceFrameState extends fm.State<SequenceFrame> {

  fm.TextEditingController textFieldController;
  var focusNode = fm.FocusNode();
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();

  @override
  void initState() {
    super.initState();
    textFieldController = fm.TextEditingController();
    focusNode.requestFocus();
  }

  @override
  void dispose() {
    textFieldController.dispose();
    super.dispose();
  }

  void _sendOneCall(SequencerModel model) {
    var value = textFieldController.value.text;
    setState(() {
      //  Process the call
      if (value.toLowerCase().trim() == 'undo')
        model.undoLastCall();
      else if (value.toLowerCase().trim() == 'reset')
        model.reset();
      else
        model.loadOneCall(value);
      //  Erase it from the the text field
      textFieldController.clear();
      //  And get the focus back for the next call
      focusNode.requestFocus();
    });
  }

  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer<SequencerModel>(
       builder: (context, model, child) {
         return fm.Column(
           children: [
             fm.Container(
               color: Color.WHITE,
               child: fm.TextField(
                 key: fm.Key('Sequencer Input'),
                // autofocus: true,
                 focusNode: focusNode,
                 controller: textFieldController,
                 decoration: fm.InputDecoration(
                     hintText: 'Enter calls',
                     errorStyle:fm.TextStyle(fontSize: 20),
                     errorMaxLines: 10,
                     errorText: model.errorString.isEmpty ? null : model.errorString),
                 enableSuggestions: false,
                 style: fm.TextStyle(fontSize: 24),
                 //  Code to run when user presses Enter
                 onSubmitted: (value) {
                   _sendOneCall(model);
                 },
               ),
             ),
             fm.Expanded(
                 child: ScrollablePositionedList.builder(
                   itemScrollController: itemScrollController,
                   itemPositionsListener: itemPositionsListener,
                   itemCount: model.calls.length,
                   itemBuilder: itemBuilder,
                 )
             ),
          //   if (model.errorString.isNotEmpty)
             fm.Container(
               color: Color.FLOOR,
               child: fm.Row(
                 children: [
                   fm.Expanded(
                       child: Button('Undo',onPressed: () {
                         setState(() {
                           model.undoLastCall();
                         });
                       })
                   ),
                   fm.Expanded(
                       child: Button('Reset',onPressed: () {
                         setState(() {
                           model.reset();
                         });
                       })
                   ),
                   fm.Expanded(
                       child: Button('Copy',onPressed: () {
                         model.copy();
                         fm.ScaffoldMessenger.of(context).showSnackBar(fm.SnackBar(
                             backgroundColor: Color.BLUE,
                             duration: Duration(seconds: 2),
                             content: fm.Text('Calls Copied.',style: fm.TextStyle(fontSize: 20))
                         ));
                       })
                   ),
                   fm.Expanded(
                       child: Button('Paste',onPressed: () {
                         setState(() {
                           model.paste();
                         });
                       })
                   ),
                 ],
               ),
             ),
             //  For testing - a very tiny spot to tap
             //  since the tester cannot simulate keyboard Enter
               fm.Container(
                 key: fm.Key('Submit Call'),
                 child: fm.GestureDetector(
                   child: fm.Text(' ',style: fm.TextStyle(fontSize:1),),
                   onTap: () { _sendOneCall(model); },
                 ),
               ),
             fm.Text(model.errorString,key: fm.Key('Error text'),style: fm.TextStyle(fontSize: 0.01))
           ],
         );
       },
    );
  }

  //  Builder for one item of the list
  fm.Widget itemBuilder(fm.BuildContext context, int index) {
    return pp.Consumer<SequencerModel>(
        builder: (context, model, child) {
          final currentCall = model.currentCall;
          SequencerCall call;
          try {
            call = model.calls[index];
          } on Error { call = null; };
          if (currentCall == index) {
            later(() {
              itemScrollController.scrollTo(
                  index: max(index-5, 0),
                  duration: Duration(seconds: 1),
                  curve: fm.Curves.easeInOutCubic);
            });
          }
          return fm.Container(
            decoration: fm.BoxDecoration(
                border: fm.Border(top: fm.BorderSide(width: 1, color: Color.BLACK))),
            child: fm.Material(
              color: (index == currentCall)
                  ? Color.YELLOW
                  : (call?.level?.color ?? Color.WHITE),
              child:
                  model.isComment(call?.name ?? '#')
                      ? _OneLine(call?.name ?? '','')
                      : fm.InkWell(
                      highlightColor: call?.level?.color?.darker() ?? Color.WHITE,
                      onTap: () {
                        model.animateAtCall(index);
                      },
                      child: _OneLine(call?.name ?? '',call?.level?.name ?? ''))
            )
          );
        });
  }

}

class _OneLine extends fm.StatelessWidget {
  final String name;
  final String level;
  _OneLine(this.name,[this.level='']);

  @override
  fm.Widget build(fm.BuildContext context) => fm.Row(
    children: [
      fm.Flexible(
        child: fm.Container(
            alignment: fm.Alignment.centerLeft,
            padding: fm.EdgeInsets.only(left: 20.0),
            child: AutoSizeText(name, style: fm.TextStyle(fontSize: 20))
        ),
      ),
      fm.Container(
          alignment: fm.Alignment.topRight,
          padding: fm.EdgeInsets.only(top:2,right:2),
          child: fm.Text(level)
      )
    ],
  );
}