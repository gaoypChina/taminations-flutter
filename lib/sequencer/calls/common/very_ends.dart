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

import 'dart:math';

import '../../../dancer_model.dart';
import '../../call_context.dart';
import 'fliter_actives.dart';

class VeryEnds extends FilterActives {

  VeryEnds(String name) : super(name);

  @override
  bool isActive(DancerModel d, CallContext ctx) {
    var leftCount = ctx.dancersToLeft(d).length;
    var rightCount = ctx.dancersToRight(d).length;
    return min(leftCount,rightCount) == 0 &&
           max(leftCount,rightCount) >= 5;
  }

}