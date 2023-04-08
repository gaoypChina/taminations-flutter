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

  final List<AnimatedCall> PassTheOcean = [ 

    AnimatedCall('Pass the Ocean',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',difficulty: 1,
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          Forward.changeBeats(.5) +
          LeadRight.scale(2.0,1.5),

          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          LeadLeft.changeBeats(2).changehands(1).scale(1.0,0.5)
      ]),

    AnimatedCall('Pass the Ocean',
      formation:Formations.FacingCouplesClose,
      from:'Close Couples',noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          Forward.changeBeats(.5).scale(0.5,1.0) +
          LeadRight.scale(1.0,1.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          LeadLeft.changeBeats(2).changehands(1).scale(0.5,0.5)
      ]),

    AnimatedCall('Pass the Ocean',
      formation:Formations.NormalLines,
      from:'Lines',difficulty: 1,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward.changeBeats(.5) +
          LeadRight.scale(2.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(2).changehands(1).scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward.changeBeats(.5) +
          LeadRight.scale(2.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(2).changehands(1).scale(1.0,0.5)
      ]),

    AnimatedCall('Pass the Ocean',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',difficulty: 1,
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(1.5,1.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          LeadLeft.changeBeats(2).changehands(1).scale(0.5,0.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(1.5,1.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          LeadLeft.changeBeats(2).changehands(1).scale(0.5,0.5)
      ]),

    AnimatedCall('Pass the Ocean',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',difficulty: 3,
      paths:[
          LeadRight.changeBeats(4).scale(1.5,3.0),

          HingeLeft.scale(0.5,1.0),

          HingeLeft.scale(0.5,1.0),

          LeadRight.changeBeats(4).scale(1.5,3.0)
      ]),

    AnimatedCall('Pass the Ocean',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',difficulty: 3,
      paths:[
          LeadRight.changeBeats(4).scale(3.0,1.5),

          HingeLeft.scale(1.0,0.5),

          HingeLeft.scale(1.0,0.5),

          LeadRight.changeBeats(4).scale(3.0,1.5)
      ]),

    AnimatedCall('Heads Pass the Ocean',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',difficulty: 1,
      paths:[
          ExtendLeft.changeBeats(2).scale(3.0,0.5) +
          Forward.changeBeats(.5) +
          LeadRight.scale(2.0,1.5),

          ExtendLeft.changeBeats(2).scale(3.0,0.5) +
          LeadLeft.changeBeats(2).changehands(1).scale(1.0,0.5),

          Path(),

          Path()
      ]),

    AnimatedCall('Sides Pass the Ocean',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',difficulty: 1,
      paths:[
          Path(),

          Path(),

          ExtendLeft.changeBeats(2).scale(3.0,0.5) +
          Forward.changeBeats(.5) +
          LeadRight.scale(2.0,1.5),

          ExtendLeft.changeBeats(2).scale(3.0,0.5) +
          LeadLeft.changeBeats(2).changehands(1).scale(1.0,0.5)
      ]),
  ];

