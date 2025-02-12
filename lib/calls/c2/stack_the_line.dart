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

  final List<AnimatedCall> StackTheLine = [

    AnimatedCall('Stack the Line',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          QuarterRight.changeBeats(3).skew(3.0,0.0),

          QuarterLeft.changeBeats(3).skew(1.0,0.0),

          QuarterLeft.changeBeats(3).skew(-3.0,2.0),

          QuarterRight.changeBeats(3).skew(-1.0,-2.0)
      ]),

    AnimatedCall('Stack the Line',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          QuarterLeft.changeBeats(3).skew(-3.0,2.0),

          QuarterRight.changeBeats(3).skew(-1.0,-2.0),

          QuarterRight.changeBeats(3).skew(3.0,0.0),

          QuarterLeft.changeBeats(3).skew(1.0,0.0)
      ]),

    AnimatedCall('Stack the Line',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',
      paths:[
          QuarterRight.changeBeats(3).skew(3.0,0.0),

          QuarterRight.changeBeats(3).skew(-1.0,-2.0),

          QuarterRight.changeBeats(3).skew(3.0,0.0),

          QuarterRight.changeBeats(3).skew(-1.0,-2.0)
      ]),

    AnimatedCall('Stack the Line',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',
      paths:[
          QuarterLeft.changeBeats(2).skew(-2.0,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0),

          QuarterLeft.changeBeats(4).skew(1.0,0.0),

          QuarterLeft.changeBeats(2).skew(-2.0,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0),

          QuarterLeft.changeBeats(4).skew(1.0,0.0)
      ]),

    AnimatedCall('Stack the Line',
      formation:Formation('Double Pass Thru'),
      from:'Double Pass Thru',
      paths:[
          QuarterRight.changeBeats(3).skew(2.0,0.5),

          QuarterLeft.changeBeats(3).skew(0.0,-0.5),

          QuarterRight.changeBeats(3).skew(0.0,-2.5),

          QuarterLeft.changeBeats(3).skew(-2.0,2.5)
      ]),

    AnimatedCall('Stack the Line',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',
      paths:[
          QuarterLeft.changeBeats(3).skew(-2.0,2.5),

          QuarterRight.changeBeats(3).skew(0.0,-2.5),

          QuarterLeft.changeBeats(3).skew(0.0,-0.5),

          QuarterRight.changeBeats(3).skew(2.0,0.5)
      ]),

    AnimatedCall('Stack the Line',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          QuarterRight.changeBeats(3).skew(0.0,-2.5),

          QuarterRight.changeBeats(3).skew(2.0,0.5),

          QuarterRight.changeBeats(3).skew(0.0,-2.5),

          QuarterRight.changeBeats(3).skew(2.0,0.5)
      ]),

    AnimatedCall('Stack the Line',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          QuarterLeft.changeBeats(3).skew(0.0,-0.5),

          QuarterLeft.changeBeats(1).skew(-1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(2.5,1.0),

          QuarterLeft.changeBeats(3).skew(0.0,-0.5),

          QuarterLeft.changeBeats(1).skew(-1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(2.5,1.0)
      ]),

    AnimatedCall('Stack the Line',
      formation:Formation('T-Bone UDLL'),
      from:'T-Bones',parts:'1.5',
      paths:[
          QuarterRight +
          DodgeLeft.changeBeats(2),

          QuarterRight +
          Forward_2,

          QuarterRight +
          Forward_2,

          QuarterRight +
          DodgeLeft.changeBeats(2)
      ]),
  ];

