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
import 'color.dart';
import 'request.dart';

class Button extends fm.StatelessWidget {

  final String name;
  final fm.Widget child;
  final fm.VoidCallback onPressed;

  Button(this.name, { fm.Widget child, this.onPressed}) :
    child = child ?? AutoSizeText(name, maxLines: 1, style: fm.TextStyle(
      fontWeight: fm.FontWeight.bold,
      fontSize: 20,
    )),
        super(key: fm.Key(name));

  @override
  fm.Widget build(fm.BuildContext context) =>
    fm.Padding(padding:fm.EdgeInsets.all( 4.0),
            child:fm.ElevatedButton(child:child,
                style: fm.ElevatedButton.styleFrom(
                  primary: Color.HIGHLIGHT,
                  onPrimary: fm.Colors.black,
                  shadowColor: fm.Colors.black,
                  elevation: 6.0,
                  side: fm.BorderSide(color:fm.Colors.grey, width: 1),
                ),
                onPressed: () {
                  if (onPressed != null) {
                    onPressed();
                  } else {
                    var request = Request(
                        action:Action.BUTTON_PRESS,
                        params:{'button':name}
                    );
                    RequestHandler.of(context).processRequest(request);
                  }
                }));

}
