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

class ScootAndRamble extends Action with CallWithParts {

  @override final level = LevelData.C1;
  @override int numberOfParts = 2;
  @override var help = '''Scoot and Ramble is a 2-part call:
  1.  Scoot Back
  2.  Ramble''';
  @override var helplink = 'c1/scoot_and_ramble';
  ScootAndRamble(name) : super(name);

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls('Scoot Back');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Ramble');
  }

}