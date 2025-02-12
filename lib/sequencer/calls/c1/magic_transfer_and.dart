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

class MagicTransferAnd extends Action {

  @override final level = LevelData.C1;
  @override var helplink = 'c1/magic_column_formation';
  MagicTransferAnd(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    final othercall = name.replaceFirst('Magic (Column )?Transfer and'.ri,'').trim();
    ctx.applyCalls('Magic Column Transfer and');
    ctx.contractPaths();
    ctx.applyCalls('Centers $othercall');
  }

}