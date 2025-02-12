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

  final List<AnimatedCall> AnythingAndCross = [

    AnimatedCall('Cross',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(3.0,2.0) +
          Forward,

          Stand.changeBeats(3).changehands(0)
      ]),

    AnimatedCall('Cross',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',
      paths:[
          Stand.changeBeats(3).changehands(0),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(3.0,2.0) +
          Forward
      ]),

    AnimatedCall('Cross',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          Stand.changeBeats(2).changehands(0),

      Path.fromMovement(Movement.fromData(beats: 2, hands: Hands.LEFT, cx1: 1, cy1: 0, cx2: -.5, cy2: -2, x2: 2, y2: -2, cx3: 1, cx4: 1, cy4: -.4, x4: 2, y4: -.4  )),

          Stand.changeBeats(2).changehands(0),

      Path.fromMovement(Movement.fromData(beats: 2, hands: Hands.LEFT, cx1: 1, cy1: 0, cx2: -.5, cy2: -2, x2: 2, y2: -2, cx3: 1, cx4: 1, cy4: -.4, x4: 2, y4: -.4  ))
      ]),

    AnimatedCall('Cross',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(3.0,2.0) +
          Forward,

          Stand.changeBeats(3).changehands(0),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(3.0,2.0) +
          Forward,

          Stand.changeBeats(3).changehands(0)
      ]),

    AnimatedCall('Cross',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',
      paths:[
          Stand.changeBeats(3).changehands(0),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(3.0,2.0) +
          Forward,

          Stand.changeBeats(3).changehands(0),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(3.0,2.0) +
          Forward
      ]),

    AnimatedCall('Beaus Cross',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
      Path.fromMovement(Movement.fromData(beats: 2, hands: Hands.LEFT, cx1: 1, cy1: 0, cx2: .8, cy2: -2, x2: 3, y2: -2, cx3: 1, cx4: 1, cy4: -.4, x4: 2, y4: -.4  )),

          Stand.changeBeats(2).changehands(0)
      ]),

    AnimatedCall('Beaus Cross',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',
      paths:[
      Path.fromMovement(Movement.fromData(beats: 2, hands: Hands.LEFT, cx1: 1, cy1: 0, cx2: .8, cy2: -2, x2: 4, y2: -2, cx3: 1, cx4: 1, cy4: -.4, x4: 2, y4: -.4  )),

          Stand.changeBeats(2).changehands(0),

      Path.fromMovement(Movement.fromData(beats: 2, hands: Hands.LEFT, cx1: 1, cy1: 0, cx2: .8, cy2: -2, x2: 4, y2: -2, cx3: 1, cx4: 1, cy4: -.4, x4: 2, y4: -.4  )),

          Stand.changeBeats(2).changehands(0)
      ]),

    AnimatedCall('Belles Cross',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          Stand.changeBeats(2).changehands(0),

      Path.fromMovement(Movement.fromData(beats: 2, hands: Hands.RIGHT, cx1: 1, cy1: 0, cx2: .8, cy2: 2, x2: 3, y2: 2, cx3: 1, cx4: 1, cy4: .4, x4: 2, y4: .4  ))
      ]),

    AnimatedCall('Belles Cross',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',
      paths:[
          Stand.changeBeats(2).changehands(0),

      Path.fromMovement(Movement.fromData(beats: 2, hands: Hands.RIGHT, cx1: 1, cy1: 0, cx2: .8, cy2: 2, x2: 4, y2: 2, cx3: 1, cx4: 1, cy4: .4, x4: 2, y4: .4  )),

          Stand.changeBeats(2).changehands(0),

      Path.fromMovement(Movement.fromData(beats: 2, hands: Hands.RIGHT, cx1: 1, cy1: 0, cx2: .8, cy2: 2, x2: 4, y2: 2, cx3: 1, cx4: 1, cy4: .4, x4: 2, y4: .4  ))
      ]),

    AnimatedCall('Wheel and Deal, Beaus Cross',
      formation:Formation('Two-Faced Line RH'),
      group:' ',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,2.0).skew(2.0,0.0) +
      Path.fromMovement(Movement.fromData(beats: 2, hands: Hands.LEFT, cx1: 1, cy1: 0, cx2: .8, cy2: -2, x2: 4, y2: -2, cx3: 1, cx4: 1, cy4: -.4, x4: 2, y4: -.4  )),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(2.0,0.0) +
          Stand.changeBeats(2).changehands(0)
      ]),
  ];

