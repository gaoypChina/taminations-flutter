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
import '../a2/all_4_all_8.dart' as a2;

  final List<AnimatedCall> CrossTrailThru = [

    AnimatedCall('Cross Trail Thru',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 0, cy2: -2.5, x2: 1.5, y2: -2.5, cx3: 1, cx4: 1, cy4: -.5, x4: 2, y4: -.5  )),

          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 1.5, cy2: 1.5, x2: 1.5, y2: 1.5, cx3: 1, cx4: 1, cy4: .5, x4: 2, y4: .5  ))
      ]),

    AnimatedCall('Cross Trail Thru',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 0, cy2: -2.5, x2: 2, y2: -2.5, cx3: 1, cx4: 1, cy4: -.5, x4: 2, y4: -.5  )),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 1.5, cy2: 1.5, x2: 2, y2: 1.5, cx3: 1, cx4: 1, cy4: .5, x4: 2, y4: .5  )),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 0, cy2: -2.5, x2: 2, y2: -2.5, cx3: 1, cx4: 1, cy4: -.5, x4: 2, y4: -.5  )),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 1.5, cy2: 1.5, x2: 2, y2: 1.5, cx3: 1, cx4: 1, cy4: .5, x4: 2, y4: .5  ))
      ]),

    AnimatedCall('Cross Trail Thru',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 0, cy2: -2.5, x2: 1, y2: -2.5, cx3: 1, cx4: 1, cy4: -.5, x4: 2, y4: -.5  )),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 1.5, cy2: 1.5, x2: 1, y2: 1.5, cx3: 1, cx4: 1, cy4: .5, x4: 2, y4: .5  )),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 0, cy2: -2.5, x2: 1, y2: -2.5, cx3: 1, cx4: 1, cy4: -.5, x4: 2, y4: -.5  )),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 1.5, cy2: 1.5, x2: 1, y2: 1.5, cx3: 1, cx4: 1, cy4: .5, x4: 2, y4: .5  ))
      ]),

    AnimatedCall('Cross Trail Thru',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Ocean Waves',
      paths:[
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 0, cy2: -4, x2: 1, y2: -4, cx3: 1, cx4: 1, cy4: -.5, x4: 2, y4: -.5  )),

      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 1.5, cy2: 2, x2: 1, y2: 2, cx3: 1, cx4: 1, cy4: .5, x4: 2, y4: .5  )),

      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 1.5, cy2: 2, x2: 1, y2: 2, cx3: 1, cx4: 1, cy4: .5, x4: 2, y4: .5  )),

      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 0, cy2: -4, x2: 1, y2: -4, cx3: 1, cx4: 1, cy4: -.5, x4: 2, y4: -.5  ))
      ]),

    AnimatedCall('As Couples Cross Trail Thru',
      formation:Formation('Normal Lines'),
      from:'Lines',group:' ',
      paths:[
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5) +
          ExtendRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.0,4.5) +
          Forward.changehands(Hands.RIGHT),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5) +
          ExtendRight.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.0,5.5) +
          Forward.changehands(Hands.LEFT),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5) +
          ExtendLeft.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(2.0,3.5),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5) +
          ExtendLeft.changeBeats(2).changehands(Hands.GRIPLEFT).scale(2.0,2.5)
      ]),
    a2.All4All8.where((tam) =>
      tam.title == 'All 4 Couples Cross Trail Thru').first.xref(title: 'All 4 Couples Cross Trail Thru').xref(group: ' '),
  ];

