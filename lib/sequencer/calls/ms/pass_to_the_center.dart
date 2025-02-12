/*
 *     Copyright 2022 Brad Christie
 *
 *     This file is part of Taminations.
 *
 *     Taminations is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU Affero General Public License as published
 *     by the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     Taminations is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU Affero General Public License for more details.
 *
 *     You should have received a copy of the GNU Affero General Public License
 *     along with Taminations.  If not, see <http://www.gnu.org/licenses/>.
 */

import '../common.dart';

class PassToTheCenter extends Action with CallWithParts {

  @override var level = LevelData.MS;
  @override int numberOfParts = 2;
  @override var help = '''Pass to the Center has 2 parts:
  1.  Pass Thru
  2.  Outer 4 Trade''';
  @override var helplink = 'ms/pass_to_the_center';
  PassToTheCenter(name) : super(name);

  @override
   void performPart1(CallContext ctx) {
    //  Check that Pass Thru is with dancers facing in passing dancers facing out
    //  Otherwise it will accept incorrect starting formations
    if (ctx.dancers.where((d) => d.isFacingIn).length !=
        ctx.dancers.where((d) => d.isFacingOut).length)
      throw FormationNotFoundError(name);
    ctx.applyCalls('Pass Thru');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Outer 4 Trade');
  }

}