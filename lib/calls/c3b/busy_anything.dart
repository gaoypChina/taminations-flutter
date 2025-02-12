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

  final List<AnimatedCall> BusyAnything = [

    AnimatedCall('Busy Cross Cycle',
      formation:Formation('Two-Faced Lines RH'),
      group:'Busy',fractions:'4',
      paths:[
          Forward_2.changeBeats(4).changehands(Hands.RIGHT) +
          LeadRight.changeBeats(4).scale(1.0,4.0) +
          QuarterRight.skew(0.0,1.0),

          Forward_2.changeBeats(4).changehands(Hands.LEFT) +
          LeadRight.changeBeats(2).scale(1.0,2.0) +
          RunRight.changeBeats(2) +
          QuarterRight.skew(0.0,1.0),

          RunRight.changeBeats(4).changehands(Hands.LEFT) +
          DodgeLeft.changeBeats(4),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(3.0,3.0) +
          Forward_4
      ]),

    AnimatedCall('Busy Crossfire',
      formation:Formation('Two-Faced Lines LH'),
      group:'Busy',fractions:'4',
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(3.0,3.0) +
          Forward_4,

          RunLeft.changeBeats(4).changehands(Hands.RIGHT) +
          DodgeRight.changeBeats(4),

          Forward_2.changeBeats(4).changehands(Hands.RIGHT) +
          SwingLeft.changeBeats(2.5) +
          Forward_2.changeBeats(1.5),

          Forward_2.changeBeats(4).changehands(Hands.LEFT) +
          RunLeft.changeBeats(4).scale(1.0,2.0).skew(2.0,0.0)
      ]),

    AnimatedCall('Busy Mix',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:2,y:-1,angle:180),
  ]),
      group:'Busy',fractions:'4',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(3.0,3.0) +
          Forward_4,

          RunRight.changeBeats(4).changehands(Hands.LEFT) +
          DodgeLeft.changeBeats(4),

          Forward_2.changeBeats(4).changehands(Hands.RIGHT) +
          DodgeRight.changeBeats(2).scale(1.0,1.167) +
          SwingRight.changeBeats(2).scale(0.667,0.667),

          Forward_2.changeBeats(4).changehands(Hands.LEFT) +
          RunRight.changeBeats(4).scale(1.0,1.5)
      ]),

    AnimatedCall('Busy Single Wheel',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:2,y:-1,angle:180),
  ]),
      group:'Busy',fractions:'4',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(3.0,3.0) +
          Forward_4,

          RunRight.changeBeats(4).changehands(Hands.LEFT) +
          DodgeLeft.changeBeats(4),

          Forward_2.changeBeats(4).changehands(Hands.RIGHT) +
          UmTurnRight.changeBeats(4).skew(2.0,-2.0),

          Forward_2.changeBeats(4).changehands(Hands.LEFT) +
          UmTurnLeft.changeBeats(4).skew(-2.0,0.0)
      ]),
  ];

