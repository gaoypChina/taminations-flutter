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

import '../common.dart';

class Phantom extends Action {

  @override final level = LevelData.C1;
  final String _subcall;
  @override var help = 'Currently the program only supports C-1 Phantom formations';
  @override var helplink = 'c1/phantom_formation';
  Phantom(String name) :
        _subcall = name.replaceFirst('Phantom'.ri, '').trim(),
        super(name);

  static final Formation PhantomSnapFormation_1 = Formation('', dancers:[
    DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
    DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
    DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:270),
    DancerModel.fromData(gender:Gender.GIRL,x:1,y:2,angle:270),
  ]);

  static final Formation PhantomSnapFormation_2 = Formation('', dancers:[
    DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
    DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
    DancerModel.fromData(gender:Gender.BOY,x:3,y:-2,angle:90),
    DancerModel.fromData(gender:Gender.GIRL,x:1,y:-2,angle:90),
  ]);

  CallContext _addPhantoms(CallContext ctx) {
    //  Add all the phantoms
    //  This assumes lines, will not work
    //  for phantom column formations
    final ang = ctx.dancers.first.angleFacing;
    final positions = (ang.isAround(0) || ang.isAround(pi))
    //  Lines are parallel to Y-axis
    //  Vectors must be pairs of diagonal opposites
    //  for XML mapping to work
        ? [Vector(2,-3),Vector(-2,3),Vector(2,-1),Vector(-2,1),
      Vector(-2,-3),Vector(2,3),Vector(-2,-1),Vector(2,1)]
    //  Lines are parallel to X-axis
        : [Vector(-3,2),Vector(3,-2),Vector(-1,2),Vector(1,-2),
      Vector(-3,-2),Vector(3,2),Vector(-1,-2),Vector(1,2)];
    //  Positions for phantoms are the ones not
    //  occupied by real dancers
    final phantomPositions = positions.where(
            (v) => ctx.dancers.none((d) => d.location.isAbout(v))).toList();
    //  Put phantoms in those positions
    final phantoms = phantomPositions.mapIndexed((index, v) =>
        DancerModel.cloneWithOptions(ctx.dancers.first,
            gender: Gender.PHANTOM,
            number: 'P${index+1}')
            .setStartPosition(v)
            .rotateStartAngle((index % 2) *180.0)
    );
    //  And merge with real dancers in a new context
    final phantomctx = CallContext.fromContext(ctx,dancers: ctx.dancers+phantoms);
    //  Find good rotation
    phantomctx.analyze();
    final retval = phantomctx.rotatePhantoms(_subcall);
    if (retval == null)
      throw CallError('Unable to find phantom formation for $_subcall');
    return retval;
  }

  @override
  void perform(CallContext ctx) {
    final phantomSnapFormations = {
      PhantomSnapFormation_1 : 1.0,
      PhantomSnapFormation_2 : 1.0
    };
    ctx.matchFormationList(phantomSnapFormations);
    //  Split the dancers into two groups
    //  by the axis the dancers are facing
    final groups = ctx.dancers.partition((item) =>
        item.angleFacing.isAround(0.0) || item.angleFacing.isAround(pi));
    for (final group in groups) {
      //  Make a call context for this group
      final groupctx = CallContext.fromContext(ctx,dancers: group);
      //  Add phantoms to make 8 dancers
      final phantomctx = _addPhantoms(groupctx);
      //  Perform 8-dancer call
      phantomctx.applyCalls(_subcall);
      //  Append the results
      final groupResult = phantomctx.dancers.where((d) => d.gender != Gender.PHANTOM).toList();
      for (var i=0; i<groupResult.length; i++) {
        group[i].path += groupResult[i].path;
      }
    }

  }

}