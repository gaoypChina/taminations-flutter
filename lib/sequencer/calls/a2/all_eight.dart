/*
 *     Copyright 2021 Brad Christie
 *
 *     This file is part of Taminations.
 *
 *     Taminations is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU Affero General Public License as published
 *     by the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     Taminations is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU Affero General Public License for more details.
 *
 *     You should have received a copy of the GNU Affero General Public License
 *     along with Taminations.  If not, see <http://www.gnu.org/licenses/>.
 */


import '../common.dart';

class AllEight extends Action {

  @override final level = LevelData.A2;
  AllEight(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    if (ctx.isThar()) {
      final all8call = name.replaceAll('All (8|Eight)'.ri, '').trim();
      final xDancers = ctx.dancers.where((d) => d.isOnXAxis).toList();
      final yDancers = ctx.dancers.where((d) => d.isOnYAxis).toList();
      await ctx.subContext(xDancers, (xctx) =>
          xctx.applyCalls(all8call)
      );
      await ctx.subContext(yDancers, (yctx) =>
          yctx.applyCalls(all8call)
      );
    } else
      throw CallError('Unable to do $name from this formation.');
  }

}