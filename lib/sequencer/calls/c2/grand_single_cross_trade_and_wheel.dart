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

class GrandSingleCrossTradeAndWheel extends Action with CallWithParts {

  @override final level = LevelData.C2;
  @override int numberOfParts = 3;
  @override var help = '''Grand Single Cross Trade and Wheel is a 3-part call:
  1.  Hinge
  2.  Triple Trade
  3.  Center 6 Step, others Fold''';
  @override var helplink = 'c2/cross_and_wheel';
  GrandSingleCrossTradeAndWheel(name) : super(name);

  @override
   void performPart1(CallContext ctx) {
    final left = name.startsWith('Left') ? 'Left' : '';
    ctx.applyCalls('$left Hinge');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.analyze();
    ctx.applyCalls('Triple Trade');
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.analyze();
    ctx.applyCalls('Center 6 Step While Very Ends Fold');
  }

}