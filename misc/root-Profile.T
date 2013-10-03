#!/bin/bash
#
# dot-usr/misc/root-Profile.T: Template for .usr/Profile
#
# Copyright (C) 2013 M E Leypold
# 
# This program is free software: you can redistribute it and/or modify it under the terms of
# the GNU General Public License as published by the Free Software Foundation, either
# version 3 of the License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
# without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License along with this program.
# If not, see <http://www.gnu.org/licenses/>.
#

MYNAME="$0";    # standard boilerplate: where I am?

case "$0" in
    /*)  ;;
   */*)  MYNAME="$(/bin/pwd)/$MYNAME" ;;
     *)  MYNAME="$(which "$MYNAME")"  ;;
esac

MYPATH="$(dirname "$MYNAME")"

"$MYPATH"/misc/dot-usr.profile "$@"

# Alternativy (comment out the call above):

# .  "$MYPATH/misc/profile-tools.shlib"
#
# begin_profile "$@"
# eval "$("$MYPATH"/misc/dot-usr.profile -sub)"
#
# # your own variables/extensions go below
#
# export_var SOMEVAR "foobar"
#
# end_profile

