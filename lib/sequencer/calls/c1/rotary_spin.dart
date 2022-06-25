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

class RotarySpin extends Action with CallWithParts {

  @override int numberOfParts = 2;
  @override final level = LevelData.C1;
  final bool isLeft;
  RotarySpin(String name) : isLeft=name.startsWith('Left'), super(name);

  @override
  Future<void> performPart1(CallContext ctx) async {
    var left = isLeft ? 'Left' : '';
    await ctx.applyCalls('$left Pass Thru');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    var wave = isLeft ? 'Wave' : 'Left-Hand Wave';
    //  Fake Courtesy Turn with a Wheel Around so we can do the left version
    var wheel = isLeft ? 'Reverse Wheel Around' : 'Wheel Around';
    await ctx.applyCalls('Centers Step to a $wave and Cast Off 3/4 '
        'While Ends $wheel and Roll');
  }

}