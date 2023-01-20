#! /bin/bash
echo "~~ Swapping SSH ~~"

mv ~/.ssh/config ~/.ssh/config.alt.temp
mv ~/.ssh/config.alt ~/.ssh/config
mv ~/.ssh/config.alt.temp ~/.ssh/config.alt

cat ~/.ssh/config
echo "~~ Swapping Complete ~~"
