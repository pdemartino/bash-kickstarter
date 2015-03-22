#
# Copyright (C) 2015 Pasquale De Martino <paco.dmp@gmail.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

# grep-kill
#
# kills a process by partial name match

function grep-kill {
   if [ $# -gt 0 ]; then
      ps -e | grep $1 | grep -v grep | awk '{print $1}' | xargs kill
   else
      echo "grep-kill <partial process name>"
   fi

}
