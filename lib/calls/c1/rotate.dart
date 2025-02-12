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

  final List<AnimatedCall> Rotate = [

    AnimatedCall('Heads Rotate 1/4',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',parts:'2',
      paths:[
          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0) +
          LeadLeft.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,2.0),

          QuarterRight.changeBeats(2).changehands(Hands.LEFT) +
          LeadLeft.changeBeats(3).changehands(Hands.LEFT).scale(3.5,3.0),

          Forward_2.changehands(Hands.RIGHT),

          Forward_2.changehands(Hands.LEFT)
      ]),

    AnimatedCall('Sides Rotate 1/4',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',parts:'2',
      paths:[
          Forward_2.changehands(Hands.RIGHT),

          Forward_2.changehands(Hands.LEFT),

          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0) +
          LeadLeft.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,2.0),

          QuarterRight.changeBeats(2).changehands(Hands.LEFT) +
          LeadLeft.changeBeats(3).changehands(Hands.LEFT).scale(3.5,3.0)
      ]),

    AnimatedCall('Heads Rotate 1/2',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',parts:'2',
      paths:[
          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0) +
          LeadLeft.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,2.0) +
          LeadLeft.changeBeats(4).changehands(Hands.RIGHT).scale(2.5,3.0),

          QuarterRight.changeBeats(2).changehands(Hands.LEFT) +
          LeadLeft.changeBeats(3).changehands(Hands.LEFT).scale(3.5,3.0) +
          LeadLeft.changeBeats(4).changehands(Hands.LEFT).scale(3.5,4.5),

          Forward_2.changehands(Hands.RIGHT),

          Forward_2.changehands(Hands.LEFT)
      ]),

    AnimatedCall('Sides Rotate 1/2',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',parts:'2',
      paths:[
          Forward_2.changehands(Hands.RIGHT),

          Forward_2.changehands(Hands.LEFT),

          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0) +
          LeadLeft.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,2.0) +
          LeadLeft.changeBeats(4).changehands(Hands.RIGHT).scale(2.5,3.0),

          QuarterRight.changeBeats(2).changehands(Hands.LEFT) +
          LeadLeft.changeBeats(3).changehands(Hands.LEFT).scale(3.5,3.0) +
          LeadLeft.changeBeats(4).changehands(Hands.LEFT).scale(3.5,4.5)
      ]),

    AnimatedCall('Heads Reverse Rotate 1/4',
      formation:Formation('Static Square'),
      from:'Static Square',group:'  ',parts:'2',
      paths:[
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT) +
          LeadRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.5,3.0),

          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          LeadRight.changeBeats(3).changehands(Hands.LEFT).scale(2.0,2.0),

          Forward_2.changehands(Hands.RIGHT),

          Forward_2.changehands(Hands.LEFT)
      ]),

    AnimatedCall('Sides Reverse Rotate 1/4',
      formation:Formation('Static Square'),
      from:'Static Square',group:'  ',parts:'2',
      paths:[
          Forward_2.changehands(Hands.RIGHT),

          Forward_2.changehands(Hands.LEFT),

          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT) +
          LeadRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.5,3.0),

          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          LeadRight.changeBeats(3).changehands(Hands.LEFT).scale(2.0,2.0)
      ]),

    AnimatedCall('Heads Reverse Rotate 1/2',
      formation:Formation('Static Square'),
      from:'Static Square',group:'  ',parts:'2',
      paths:[
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT) +
          LeadRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.5,3.0) +
          LeadRight.changeBeats(4).changehands(Hands.RIGHT).scale(3.5,4.5),

          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          LeadRight.changeBeats(3).changehands(Hands.LEFT).scale(2.0,2.0) +
          LeadRight.changeBeats(4).changehands(Hands.LEFT).scale(2.5,3.0),

          Forward_2.changehands(Hands.RIGHT),

          Forward_2.changehands(Hands.LEFT)
      ]),

    AnimatedCall('Sides Reverse Rotate 1/2',
      formation:Formation('Static Square'),
      from:'Static Square',group:'  ',parts:'2',
      paths:[
          Forward_2.changehands(Hands.RIGHT),

          Forward_2.changehands(Hands.LEFT),

          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT) +
          LeadRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.5,3.0) +
          LeadRight.changeBeats(4).changehands(Hands.RIGHT).scale(3.5,4.5),

          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          LeadRight.changeBeats(3).changehands(Hands.LEFT).scale(2.0,2.0) +
          LeadRight.changeBeats(4).changehands(Hands.LEFT).scale(2.5,3.0)
      ]),

    AnimatedCall('Heads Single Rotate 1/4',
      formation:Formation('Static Square'),
      from:'Static Square',group:'   ',
      paths:[
          QuarterRight.skew(0.0,-1.0) +
          CounterRotateLeft_4_2.skew(-1.0,0.0),

          QuarterRight.skew(0.0,-1.0) +
          CounterRotateLeft_2_4.skew(-1.0,0.0),

          Forward_2.changehands(Hands.RIGHT),

          Forward_2.changehands(Hands.LEFT)
      ]),

    AnimatedCall('Sides Single Rotate 1/4',
      formation:Formation('Static Square'),
      from:'Static Square',group:'   ',
      paths:[
          Forward_2.changehands(Hands.RIGHT),

          Forward_2.changehands(Hands.LEFT),

          QuarterRight.skew(0.0,-1.0) +
          CounterRotateLeft_4_2.skew(-1.0,0.0),

          QuarterRight.skew(0.0,-1.0) +
          CounterRotateLeft_2_4.skew(-1.0,0.0)
      ]),

    AnimatedCall('Heads Single Rotate 1/2',
      formation:Formation('Static Square'),
      from:'Static Square',group:'   ',
      paths:[
          QuarterRight.skew(0.0,-1.0) +
          CounterRotateLeft_4_2.skew(-1.0,0.0) +
          CounterRotateLeft_4_2.skew(0.0,-0.5),

          QuarterRight.skew(0.0,-1.0) +
          CounterRotateLeft_2_4.skew(-1.0,0.0) +
          CounterRotateLeft_2_4.skew(0.0,0.5),

          Forward_2.changehands(Hands.RIGHT).skew(-0.5,0.0),

          Forward_2.changehands(Hands.LEFT).skew(-0.5,0.0)
      ]),

    AnimatedCall('Sides Single Rotate 1/2',
      formation:Formation('Static Square'),
      from:'Static Square',group:'   ',
      paths:[
          Forward_2.changehands(Hands.RIGHT).skew(-0.5,0.0),

          Forward_2.changehands(Hands.LEFT).skew(-0.5,0.0),

          QuarterRight.skew(0.0,-1.0) +
          CounterRotateLeft_4_2.skew(-1.0,0.0) +
          CounterRotateLeft_4_2.skew(0.0,-0.5),

          QuarterRight.skew(0.0,-1.0) +
          CounterRotateLeft_2_4.skew(-1.0,0.0) +
          CounterRotateLeft_2_4.skew(0.0,0.5)
      ]),

    AnimatedCall('Heads Reverse Single Rotate 1/4',
      formation:Formation('Static Square'),
      from:'Static Square',group:'    ',
      paths:[
          QuarterLeft.skew(0.0,1.0) +
          CounterRotateRight_2_m4.skew(-1.0,0.0),

          QuarterLeft.skew(0.0,1.0) +
          CounterRotateRight_4_m2.skew(-1.0,0.0),

          Forward_2.changehands(Hands.RIGHT),

          Forward_2.changehands(Hands.LEFT)
      ]),

    AnimatedCall('Sides Reverse Single Rotate 1/4',
      formation:Formation('Static Square'),
      from:'Static Square',group:'    ',
      paths:[
          Forward_2.changehands(Hands.RIGHT),

          Forward_2.changehands(Hands.LEFT),

          QuarterLeft.skew(0.0,1.0) +
          CounterRotateRight_2_m4.skew(-1.0,0.0),

          QuarterLeft.skew(0.0,1.0) +
          CounterRotateRight_4_m2.skew(-1.0,0.0)
      ]),

    AnimatedCall('Heads Reverse Single Rotate 1/2',
      formation:Formation('Static Square'),
      from:'Static Square',group:'    ',
      paths:[
          QuarterLeft.skew(0.0,1.0) +
          CounterRotateRight_2_m4.skew(-1.0,0.0) +
          CounterRotateRight_2_m4.skew(0.0,-0.5),

          QuarterLeft.skew(0.0,1.0) +
          CounterRotateRight_4_m2.skew(-1.0,0.0) +
          CounterRotateRight_4_m2.skew(0.0,0.5),

          Forward_2.changehands(Hands.RIGHT).skew(-0.5,0.0),

          Forward_2.changehands(Hands.RIGHT).skew(-0.5,0.0)
      ]),

    AnimatedCall('Sides Reverse Single Rotate 1/2',
      formation:Formation('Static Square'),
      from:'Static Square',group:'    ',
      paths:[
          Forward_2.changehands(Hands.RIGHT).skew(-0.5,0.0),

          Forward_2.changehands(Hands.RIGHT).skew(-0.5,0.0),

          QuarterLeft.skew(0.0,1.0) +
          CounterRotateRight_2_m4.skew(-1.0,0.0) +
          CounterRotateRight_2_m4.skew(0.0,-0.5),

          QuarterLeft.skew(0.0,1.0) +
          CounterRotateRight_4_m2.skew(-1.0,0.0) +
          CounterRotateRight_4_m2.skew(0.0,0.5)
      ]),
  ];

