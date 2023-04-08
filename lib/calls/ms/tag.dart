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

  final List<AnimatedCall> Tag = [ 

    AnimatedCall('Tag the Line',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',difficulty: 1,
      paths:[
          QuarterRight.skew(0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5),

          QuarterRight.skew(0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Tag the Line',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',difficulty: 2,
      paths:[
          QuarterLeft.skew(-0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5),

          QuarterLeft.skew(-0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Tag the Line',
      formation:Formations.WaveRH,
      from:'Right-Hand Ocean Wave',difficulty: 2,
      paths:[
          QuarterRight.skew(0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5),

          QuarterLeft.skew(-0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Tag the Line',
      formation:Formations.WaveLH,
      from:'Left-Hand Ocean Wave',difficulty: 2,
      paths:[
          QuarterLeft.skew(-0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5),

          QuarterRight.skew(0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Tag the Line',
      formation:Formations.NormalLines,
      from:'Lines Facing In',difficulty: 2,
      paths:[
          QuarterRight.skew(1.0,0.0) +
          Forward_4,

          QuarterRight.skew(1.0,0.0) +
          Forward_4,

          QuarterLeft +
          Forward_3 +
          ExtendRight,

          QuarterLeft +
          Forward_3 +
          ExtendRight
      ]),

    AnimatedCall('Tag the Line',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',difficulty: 1,
      paths:[
          QuarterLeft.skew(-1.0,0.0) +
          Forward_4,

          QuarterLeft.skew(-1.0,0.0) +
          Forward_4,

          QuarterRight +
          Forward_3 +
          ExtendRight,

          QuarterRight +
          Forward_3 +
          ExtendRight
      ]),

    AnimatedCall('Tag the Line',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',difficulty: 1,
      paths:[
          QuarterRight.skew(1.0,0.0) +
          Forward_4,

          QuarterRight.skew(1.0,0.0) +
          Forward_4,

          QuarterRight +
          Forward_3 +
          ExtendRight,

          QuarterRight +
          Forward_3 +
          ExtendRight
      ]),

    AnimatedCall('Tag the Line',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',difficulty: 2,
      paths:[
          QuarterLeft.skew(-1.0,0.0) +
          Forward_4,

          QuarterLeft.skew(-1.0,0.0) +
          Forward_4,

          QuarterLeft +
          Forward_3 +
          ExtendRight,

          QuarterLeft +
          Forward_3 +
          ExtendRight
      ]),

    AnimatedCall('Tag the Line',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Ocean Waves',difficulty: 2,
      paths:[
          QuarterRight.skew(1.0,0.0) +
          Forward_4,

          QuarterLeft.skew(-1.0,0.0) +
          Forward_4,

          QuarterLeft +
          Forward_3 +
          ExtendRight,

          QuarterRight +
          Forward_3 +
          ExtendRight
      ]),

    AnimatedCall('Tag the Line',
      formation:Formations.TidalLineRH,
      from:'Tidal Line',difficulty: 2,
      paths:[
          QuarterRight.changeBeats(2).skew(0.5,0.0) +
          Forward.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(1.0,0.5),

          QuarterRight.changeBeats(2).skew(0.5,0.0) +
          Forward.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(-0.5,0.0) +
          Forward.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(-0.5,0.0) +
          Forward.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Line of 8 Tag the Line',
      formation:Formations.TidalLineRH,
      from:'Tidal Line',difficulty: 2,
      paths:[
          QuarterRight.skew(0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5),

          QuarterRight.skew(0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5),

          QuarterRight.skew(0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5),

          QuarterRight.skew(0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('_Finish Line of 8 Tag the Line',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:3.5,y:-.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2.5,y:-.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1.5,y:-.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:.5,y:-.5,angle:180),
  ]),
      noDisplay: true,
      paths:[
          Forward_3 +
          ExtendRight.scale(1.0,0.5),

          Forward_3 +
          ExtendRight.scale(1.0,0.5),

          Forward_3 +
          ExtendRight.scale(1.0,0.5),

          Forward_3 +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('_Finish Line of 8 Left Tag the Line',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:3.5,y:.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2.5,y:.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1.5,y:.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:.5,y:.5,angle:180),
  ]),
      noDisplay: true,
      paths:[
          Forward_3 +
          ExtendLeft.scale(1.0,0.5),

          Forward_3 +
          ExtendLeft.scale(1.0,0.5),

          Forward_3 +
          ExtendLeft.scale(1.0,0.5),

          Forward_3 +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('_Finish Line of 8 Half Tag',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:3.5,y:-.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2.5,y:-.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1.5,y:-.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:.5,y:-.5,angle:180),
  ]),
      noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(3).scale(0.5,0.5),

          Forward.changeBeats(3).skew(0.5,0.5),

          Forward_2.changeBeats(3).skew(0.5,0.5),

          Forward_3.skew(0.5,0.5)
      ]),

    AnimatedCall('_Finish Line of 8 Left Half Tag',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:3.5,y:.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2.5,y:.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1.5,y:.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:.5,y:.5,angle:180),
  ]),
      noDisplay: true,
      paths:[
          ExtendRight.changeBeats(3).scale(0.5,0.5),

          Forward.changeBeats(3).skew(0.5,-0.5),

          Forward_2.changeBeats(3).skew(0.5,-0.5),

          Forward_3.skew(0.5,-0.5)
      ]),

    AnimatedCall('_Finish Line of 6 Tag the Line',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:3.75,y:-.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2.25,y:-.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0.75,y:-.5,angle:180),
  ]),
      noDisplay: true,
      paths:[
          Forward_3 +
          ExtendRight.scale(1.0,0.5).skew(0.5,0.0),

          Forward_3 +
          ExtendRight.scale(1.0,0.5).skew(0.5,0.0),

          Forward_3 +
          ExtendRight.scale(1.0,0.5).skew(0.5,0.0)
      ]),

    AnimatedCall('_Finish Line of 6 Left Tag the Line',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:3.75,y:.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2.25,y:.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0.75,y:.5,angle:180),
  ]),
      noDisplay: true,
      paths:[
          Forward_3 +
          ExtendLeft.scale(1.0,0.5).skew(0.5,0.0),

          Forward_3 +
          ExtendLeft.scale(1.0,0.5).skew(0.5,0.0),

          Forward_3 +
          ExtendLeft.scale(1.0,0.5).skew(0.5,0.0)
      ]),

    AnimatedCall('_Finish Line of 6 Half Tag',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:3.75,y:-.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2.25,y:-.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0.75,y:-.5,angle:180),
  ]),
      noDisplay: true,
      paths:[
          Forward_2.skew(-0.25,0.5),

          Forward_2.skew(0.25,0.5),

          Forward_2.skew(0.75,0.5)
      ]),

    AnimatedCall('_Finish Line of 6 Left Half Tag',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:3.75,y:.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2.25,y:.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0.75,y:.5,angle:180),
  ]),
      noDisplay: true,
      paths:[
          Forward_2.skew(-0.25,-0.5),

          Forward_2.skew(0.25,-0.5),

          Forward_2.skew(0.75,-0.5)
      ]),
  ];

