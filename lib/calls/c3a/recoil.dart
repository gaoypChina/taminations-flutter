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

import '../../animated_call.dart';
import '../../common_dart.dart';
import '../../moves.dart';

  final List<AnimatedCall> Recoil = [

    AnimatedCall('Recoil',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',parts:'4',
      paths:[
          UmTurnRight.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(2.0,0.0) +
          Forward_2.changeBeats(4),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(2.0,2.0).skew(-2.0,0.0) +
          RunRight.changeBeats(4).skew(2.0,0.0)
      ]),
  ];

