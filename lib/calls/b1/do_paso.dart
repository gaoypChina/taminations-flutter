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
import '../../formation.dart';
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> DoPaso = [

    AnimatedCall('Do Paso',
      formation:Formations.StaticSquare,
      group:' ',
      paths:[
          QuarterRight +
          ExtendRight.scale(1.0,0.75) +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(2.0,0.75) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(3).scale(2.0,2.25) +
          HingeLeft.scale(0.75,0.75) +
          UmTurnLeft.changeBeats(1.5).changehands(5).skew(0.75,1.0) +
          UmTurnLeft.changeBeats(1.5).changehands(5).skew(0.75,-0.75),

          QuarterLeft +
          ExtendRight.scale(1.0,0.75) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).scale(0.25,3.0) +
          HingeLeft.scale(0.75,0.75) +
          BelleWheel.changehands(5).scale(1.0,0.75),

          QuarterRight +
          ExtendRight.scale(1.0,0.75) +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(2.0,0.75) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(3).scale(2.0,2.25) +
          HingeLeft.scale(0.75,0.75) +
          UmTurnLeft.changeBeats(1.5).changehands(5).skew(0.75,1.0) +
          UmTurnLeft.changeBeats(1.5).changehands(5).skew(0.75,-0.75),

          QuarterLeft +
          ExtendRight.scale(1.0,0.75) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).scale(0.25,3.0) +
          HingeLeft.scale(0.75,0.75) +
          BelleWheel.changehands(5).scale(1.0,0.75)
      ]),

    AnimatedCall('Do Paso to an Allemande Thar',
      formation:Formations.StaticSquare,
      group:' ',
      paths:[
          QuarterRight +
          ExtendRight.scale(1.0,0.75) +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(2.0,0.75) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(3).scale(2.0,2.25) +
          SwingLeft.scale(0.75,1.375),

          QuarterLeft +
          ExtendRight.scale(1.0,0.75) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).scale(0.25,3.0) +
          SwingLeft.scale(0.75,0.375),

          QuarterRight +
          ExtendRight.scale(1.0,0.75) +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(2.0,0.75) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(3).scale(2.0,2.25) +
          SwingLeft.scale(0.75,1.375),

          QuarterLeft +
          ExtendRight.scale(1.0,0.75) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).scale(0.25,3.0) +
          SwingLeft.scale(0.75,0.375)
      ]),

    AnimatedCall('Do Paso to an Allemande Thar',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:180),
  ]),
      group:' ',noDisplay: true,
      paths:[
          ExtendRight.scale(1.0,0.75) +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(2.0,0.75) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(3).scale(2.0,2.25) +
          SwingLeft.scale(0.75,1.375),

          ExtendRight.scale(1.0,0.75) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).scale(0.25,3.0) +
          SwingLeft.scale(0.75,0.375),

          ExtendRight.scale(1.0,0.75) +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(2.0,0.75) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(3).scale(2.0,2.25) +
          SwingLeft.scale(0.75,1.375),

          ExtendRight.scale(1.0,0.75) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).scale(0.25,3.0) +
          SwingLeft.scale(0.75,0.375)
      ]),
  ];
