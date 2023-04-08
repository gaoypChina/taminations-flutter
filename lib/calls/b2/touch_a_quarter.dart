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

import '../../common_dart.dart';
import '../../formation.dart';
import '../../formations.dart';
import '../../moves.dart';
import '../../animated_call.dart';

  final List<AnimatedCall> TouchAQuarter = [ 

    AnimatedCall('Touch a Quarter',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',difficulty: 1,
      paths:[
          ExtendLeft.scale(1.5,1.0) +
          HingeRight.changeBeats(1).scale(1.0,0.5),

          ExtendLeft.scale(1.5,0.5) +
          HingeRight.changeBeats(1)
      ]),

    AnimatedCall('Touch a Quarter',
      formation:Formations.NormalLines,
      from:'Lines',difficulty: 1,
      paths:[
          ExtendLeft.scale(2.0,0.5) +
          HingeRight.changeBeats(1).changehands(6).scale(1.0,0.5),

          ExtendLeft.scale(2.0,0.5) +
          HingeRight.changeBeats(1).changehands(6).scale(1.0,0.5),

          ExtendLeft.scale(2.0,0.5) +
          HingeRight.changeBeats(1).changehands(6).scale(1.0,0.5),

          ExtendLeft.scale(2.0,0.5) +
          HingeRight.changeBeats(1).changehands(6).scale(1.0,0.5)
      ]),

    AnimatedCall('Touch a Quarter',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',difficulty: 1,
      paths:[
          ExtendLeft +
          QuarterRight.changehands(2).skew(1.0,0.0),

          Forward +
          HingeRight,

          ExtendLeft +
          QuarterRight.changehands(2).skew(1.0,0.0),

          Forward +
          HingeRight
      ]),

    AnimatedCall('Left Touch a Quarter',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',difficulty: 2,notForSequencer: true,
      paths:[
          ExtendRight.scale(1.5,0.5) +
          HingeLeft.changeBeats(1),

          ExtendRight.scale(1.5,1.0) +
          HingeLeft.changeBeats(1).scale(1.0,0.5)
      ]),

    AnimatedCall('Left Touch a Quarter',
      formation:Formations.NormalLines,
      from:'Lines',difficulty: 2,
      paths:[
          ExtendRight.scale(2.0,0.5) +
          HingeLeft.changeBeats(1).changehands(5).scale(1.0,0.5),

          ExtendRight.scale(2.0,0.5) +
          HingeLeft.changeBeats(1).changehands(5).scale(1.0,0.5),

          ExtendRight.scale(2.0,0.5) +
          HingeLeft.changeBeats(1).changehands(5).scale(1.0,0.5),

          ExtendRight.scale(2.0,0.5) +
          HingeLeft.changeBeats(1).changehands(5).scale(1.0,0.5)
      ]),

    AnimatedCall('Left Touch a Quarter',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',difficulty: 2,
      paths:[
          Forward +
          HingeLeft,

          ExtendRight +
          QuarterLeft.changehands(1).skew(1.0,0.0),

          Forward +
          HingeLeft,

          ExtendRight +
          QuarterLeft.changehands(1).skew(1.0,0.0)
      ]),

    AnimatedCall('Touch a Half',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(3).scale(1.5,2.0) +
          SwingRight,

          Forward.changeBeats(3).scale(1.5,1.0) +
          SwingRight
      ]),
  ];

