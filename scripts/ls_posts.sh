#!/bin/sh

# list all the posts
mds=`ls -r docs/????-*md` 

rm docs/book.md

for md in $mds
	   do echo $md;
	      python scripts/md_stripmetada.py $md >> docs/book.md
done
	      # strip metadata
# cat content of posts into docs/post.md
