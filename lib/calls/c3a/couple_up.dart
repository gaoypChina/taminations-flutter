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

  final List<AnimatedCall> CoupleUp = [

    AnimatedCall('Couple Up',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',parts:'4',
      paths:[
          Forward_4 +
          UmTurnRight,

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Couple Up',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',parts:'4',
      paths:[
          RunLeft.changeBeats(4),

          Forward_4 +
          UmTurnLeft
      ]),

    AnimatedCall('Couple Up',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'4',
      paths:[
          Forward_4 +
          UmTurnRight,

          RunRight.changeBeats(4),

          Forward_4 +
          UmTurnRight,

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Couple Up',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'4',
      paths:[
          RunLeft.changeBeats(4),

          Forward_4 +
          UmTurnLeft,

          RunLeft.changeBeats(4),

          Forward_4 +
          UmTurnLeft
      ]),

    AnimatedCall('Couple Up',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',parts:'3',
      paths:[
          RunRight,

          Forward_2.changeBeats(3) +
          UmTurnRight,

          RunRight.scale(0.5,1.0),

          Forward_2.changeBeats(3) +
          UmTurnRight
      ]),

    AnimatedCall('Couple Up',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',parts:'3',
      paths:[
          Forward_2.changeBeats(3) +
          UmTurnLeft,

          RunLeft.scale(0.5,1.0),

          Forward_2.changeBeats(3) +
          UmTurnLeft,

          RunLeft
      ]),

    AnimatedCall('Counter Couple Up',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'  ',parts:'4',
      taminator: '''
      This is an application of the C-2 Anything Concept.
    ''',
      paths:[
          CounterRotateRight_5_m1.changeBeats(4),

          CounterRotateLeft_m1_3.changeBeats(4) +
          UmTurnRight,

          CounterRotateLeft_3_m1.changeBeats(4),

          CounterRotateRight_1_m5.changeBeats(4) +
          UmTurnRight
      ]),

    AnimatedCall('Split Counter Couple Up',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'  ',parts:'3',
      taminator: '''
      This is an application of the C-2 Anything Concept.
    ''',
      paths:[
          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.RIGHT).skew(1.0,0.0),

          CounterRotateRight_0_m2.changeBeats(3).changehands(Hands.RIGHT).skew(-1.0,0.0) +
          UmTurnRight,

          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.RIGHT).skew(1.0,0.0),

          CounterRotateRight_0_m2.changeBeats(3).changehands(Hands.RIGHT).skew(-1.0,0.0) +
          UmTurnRight
      ]),

    AnimatedCall('Trade Couple Up',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'  ',parts:'4',
      taminator: '''
      This is an application of the C-2 Anything Concept.
    ''',
      paths:[
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,2.0) +
          UmTurnLeft,

          RunLeft.changeBeats(4).scale(0.5,2.0),

          Forward +
          ExtendRight.changeBeats(3).scale(3.0,2.0) +
          UmTurnLeft,

          RunRight.changeBeats(4).scale(1.5,2.0)
      ]),

    AnimatedCall('Trade Like a Couple Up',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'  ',parts:'3',
      paths:[
          SwingRight +
          UmTurnRight,

          SwingRight,

          SwingRight +
          UmTurnRight,

          SwingRight
      ]),

    AnimatedCall('As Couples Couple Up',
      formation:Formation('Two-Faced Lines RH'),
      group:' ',parts:'4',
      paths:[
          Forward_4.changehands(Hands.RIGHT) +
          BeauReverseWheel.scale(0.67,1.0),

          Forward_4.changehands(Hands.LEFT) +
          BelleReverseWheel.scale(0.67,1.0),

          RunRight.changeBeats(4).changehands(Hands.LEFT),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(3.0,3.0)
      ]),

    AnimatedCall('Concentric Couple Up',
      formation:Formation('Ocean Waves RH BGGB'),
      group:' ',parts:'4',
      paths:[
          Forward_4 +
          UmTurnRight,

          RunLeft.changeBeats(4),

          Forward_4 +
          UmTurnLeft,

          RunRight.changeBeats(4).scale(2.0,3.0)
      ]),

    AnimatedCall('Once Removed Couple Up',
      formation:Formation('Two-Faced Lines RH'),
      group:' ',parts:'4',
      paths:[
          Forward_4 +
          UmTurnRight,

          Forward_4 +
          UmTurnRight,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Tandem Couple Up',
      formation:Formation('Column RH GBGB'),
      group:' ',
      paths:[
          RunRight +
          Forward_2,

          Forward_2 +
          RunRight,

          Forward_4 +
          Pivotbackwardright,

          Forward_4 +
          Pivotforwardleft
      ]),
  ];

