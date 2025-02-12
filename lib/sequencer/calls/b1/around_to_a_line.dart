/*

  Taminations Square Dance Animations
  Copyright (C) 2023 Brad Christie

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

import '../common.dart';

class AroundToALine extends Action {

  @override var help = '''Here are the variations you can use for Around to a Line:
  - Around 1 and Come Into the Middle
  - Around 1 to a Line
  - Around 2 to a Line
''' 'From a Squared Set, typical usage is Heads Pass Thru Separate Around 1 To A Line';
  @override var helplink = 'b1/separate';
  AroundToALine(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    if (ctx.actives.length < ctx.dancers.length) {
      ctx.matchStandardFormation();
      for (var d in ctx.dancers)
        d.data.active = true;
      final norm = normalizeCall(name).toLowerCase();
      if (norm.contains('1andcomeintothemiddle' ))
        ctx.applyCalls('Around One and Come Into the Middle' );
      else if (norm.contains('1toaline' ))
        ctx.applyCalls('Around One To A Line' );
      else if (norm.contains('2toaline' ))
        ctx.applyCalls('Around Two To A Line' );
      else
        throw CallError('Go Around What?' );
    }
    else
      throw CallError('Cannot Go Around to a Line' );
  }

}