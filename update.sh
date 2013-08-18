#!/bin/sh

cd $HOME/tmp &&
./locate.rb >gist/me.geojson &&

cd gist &&
git commit -a -m 'Update.' >/dev/null 2>&1 &&
git push >/dev/null 2>&1
