/*

  Taminations Square Dance Animations
  Copyright (C) 2021 Brad Christie

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

class Ramble extends Action with CallWithParts {

  @override int numberOfParts = 2;
  @override final level = LevelData.C1;
  @override var help = '''Ramble is a 2-part call:
  1.  Center 4 Single Wheel, others Separate
  2.  Slide Thru''';
  @override var helplink = 'c1/scoot_and_ramble';
  Ramble() : super('Ramble');

  @override
  Future<void> performPart1(CallContext ctx) async {
    await ctx.applyCalls('Center 4 Single Wheel While Outer 4 Separate');
    ctx.matchStandardFormation(); // So "I" formations work
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    await ctx.applyCalls('Slide Thru');
  }

}