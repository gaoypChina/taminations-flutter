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

class SnapTheLock extends Action {

  @override final level = LevelData.C3A;
  @override var helplink = 'c3a/snap_the_lock';
  SnapTheLock(name) : super(name);

  @override
  void perform(CallContext ctx) {
    try {
      ctx.applyCalls('Partner Tag',
          'Outsides Partner Tag While Centers Step to a Wave Lockit Step Thru');
    } on CallError {
      throw CallError('Cannot Snap the Lock from this formation.');
    }
  }

}