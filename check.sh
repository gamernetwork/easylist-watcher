#!/bin/bash

source config.sh

domains=`cat domains.txt | tr '\n' '|' | sed 's/\([-.]\)/\\\\\1/g' | sed 's/|$//'`
changes=`hg incoming -p -R easylist/ | grep -E '^(\+|\-)[^+\-]' | cut -c 2- | grep --color=always -E $domains`

if [ -n "$changes" ];
then
	echo $changes | mail -s "Easylist update may affect your site" $EMAIL
fi
