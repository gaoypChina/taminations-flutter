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

  final List<AnimatedCall> RevolveToAWave = [

    AnimatedCall('Revolve to a Wave',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',
      paths:[
          UmTurnRight.changeBeats(4).skew(2.0,0.0),

          LeadRight.changeBeats(2).scale(0.5,2.0) +
          LeadRight.changeBeats(2).scale(2.0,2.5)
      ]),

    AnimatedCall('Revolve to a Wave',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',
      paths:[
          QuarterRight.changeBeats(1).skew(0.0,-1.0) +
          RunRight.scale(1.0,1.5) +
          LeadRight.changeBeats(1),

          ExtendLeft.changeBeats(5).scale(2.0,4.0)
      ]),
  ];

