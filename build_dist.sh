#!/bin/sh
# .+
#
# .context    : PortIO
# .title      : Build PortIO distibution
# .kind	      : command shell
# .author     : Fabrizio Pollastri <f.pollastri@inrim.it>
# .site	      : Torino - Italy
# .creation   :	13-Nov-2008
# .copyright  :	(c) 2009 Fabrizio Pollastri
# .license    : GNU General Public License (see below)
#
# This file is part of "PortIO, python low level I/O for Linux x86".
#
# PortIO is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# PortIO is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# .-

# cleanup
make clean
rm -rf build
rm -rf dist
rm *.html
rm -rf _static _sources
rm -rf tmp

# build html pages
make html
mv .build/html/* .

# build python source distribution
echo "building python distribution ... "
cp -p toggle.py _sources
python setup.py -q sdist

mv dist/*.gz .
echo "Done"

#### END
