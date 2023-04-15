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
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> CircleToALine = [

    AnimatedCall('Circle to a Line',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',group:' ',
      paths:[
          EighthRight.changehands(6) +
      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.GRIPRIGHT, cx1: 0, cy1: 1.88, cx2: 2.83, cy2: 1.88, x2: 2.83, y2: 0, cx3: 1.33, cx4: 1.33, cy4: -2, x4: 0, y4: -2  )) +
      Path.fromMovement(Movement.fromData(beats: 1.5, hands: Hands.GRIPRIGHT, cx1: 0, cy1: .39, cx2: .318, cy2: .707, x2: .707, y2: .707, cx3: .55, cx4: 1, cy4: -.45, x4: 1, y4: -1  )) +
          EighthRight.changehands(6),

          EighthLeft.changehands(5) +
      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.GRIPLEFT, cx1: 0, cy1: 1.88, cx2: 2.83, cy2: 1.88, x2: 2.83, y2: 0, cx3: 1.33, cx4: 1.33, cy4: -2, x4: 0, y4: -2  )) +
      Path.fromMovement(Movement.fromData(beats: 1.5, hands: Hands.GRIPLEFT, cx1: 0, cy1: .78, cx2: .636, cy2: 1.414, x2: 1.414, y2: 1.414, cx3: .55, cx4: 1, cy4: -.45, x4: 1, y4: -1  )) +
          EighthLeft.changehands(5) +
          UmTurnLeft.changehands(5).skew(1.0,2.0),

          EighthRight.changehands(6) +
      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.GRIPRIGHT, cx1: 0, cy1: 1.88, cx2: 2.83, cy2: 1.88, x2: 2.83, y2: 0, cx3: 1.33, cx4: 1.33, cy4: -2, x4: 0, y4: -2  )) +
          EighthLeft.changeBeats(2).changehands(6).skew(-0.707,2.121),

          EighthLeft.changehands(5) +
      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.GRIPLEFT, cx1: 0, cy1: 1.88, cx2: 2.83, cy2: 1.88, x2: 2.83, y2: 0, cx3: 1.33, cx4: 1.33, cy4: -2, x4: 0, y4: -2  )) +
          EighthRight.changeBeats(2).changehands(5).skew(2.121,0.707)
      ]),
  ];
