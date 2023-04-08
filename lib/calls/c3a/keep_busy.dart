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

  final List<AnimatedCall> KeepBusy = [ 

    AnimatedCall('Keep Busy',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',parts:'2;1.5;3',
      paths:[
          Forward_2.changehands(2) +
          Stand.changeBeats(1.5) +
          RunRight.scale(1.0,1.2) +
          ExtendRight.changeBeats(2.5).scale(2.0,0.4),

          Forward_2.changehands(1) +
          HingeRight +
          LeadRight.changeBeats(3).scale(1.8,1.0) +
          FlipRight.changeBeats(2.5).scale(1.0,0.4).skew(2.0,0.0),

          RunRight.changeBeats(5).changehands(1) +
          DodgeLeft.changeBeats(4),

          RunRight.changeBeats(5).changehands(2).scale(3.0,3.0) +
          Forward_4
      ]),

    AnimatedCall('Keep Busy',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',parts:'2;1.5;3',
      paths:[
          RunLeft.changeBeats(5).changehands(1).scale(3.0,3.0) +
          Forward_4,

          RunLeft.changeBeats(5).changehands(2) +
          DodgeRight.changeBeats(4),

          Forward_2.changehands(2) +
          HingeLeft +
          LeadLeft.changeBeats(3).scale(1.8,1.0) +
          FlipLeft.changeBeats(2.5).scale(1.0,0.4).skew(2.0,0.0),

          Forward_2.changehands(1) +
          Stand.changeBeats(1.5) +
          RunLeft.scale(1.0,1.2) +
          ExtendLeft.changeBeats(2.5).scale(2.0,0.4)
      ]),
  ];

