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

class ZipCode extends Action with CallWithParts {

  @override final level = LevelData.C2;
  @override var helplink = 'c2/zip_code';
  @override var help = 'Zip Code n has n parts';
  ZipCode(String name) : super(name) {
    final count = normalizeCall(name).last.toIntOrNull();
    if (count == null)
      throw CallError('Zip Code how much?');
    if (count >= 1 && count <= 6)
      numberOfParts = count;
    else
      throw CallError('Cannot handle Zip Code $count');
  }

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls('Centers Face Out');
    ctx.analyze();
    ctx.applyCalls('Centers Run');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Ends Pass Thru');
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls('Ends Bend');
  }

  @override
   void performPart4(CallContext ctx) {
    ctx.applyCalls('Ends Pass Thru');
  }

  @override
   void performPart5(CallContext ctx) {
    ctx.applyCalls('Ends Bend');
  }

  @override
   void performPart6(CallContext ctx) {
    ctx.applyCalls('Ends Pass Thru');
  }

}