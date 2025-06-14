#!/bin/bash

data="/data/corpora/cqpweb/corpora/test20231025"
regfile="test20231025"
name="test20231025"
registry="/data/corpora/cqpweb/registry"
infile="/tmp/test20231025.txt"
threads="10"

export CORPUS_REGISTRY="$registry"

cwb-encode  -c utf8 -d $data -f $infile -R "$registry/$regfile" -xsB -P pos -P lemma -P lemma_pos \
      -P lower -P prefix -P suffix -P is_digit -P like_num -P dep -P shape -P tag -P sentiment -P is_alpha \
      -P is_stop -P head -P head_pos -P children -P lefts -P rights -P n_lefts -P n_rights -P ent_type \
      -P ent_iob -P morph -P startsecs -P startcentisecs -P endsecs -P endcentisecs \
      -S s:0+id+text+reltime -S text:0+id+collection+file+date+year+month+day+time+channel+country+title+language+program_id \
      -S turn:0 -S meta:0+type+description+value+originalvalue -S story:0 -S musicalnotes:0+value -0 corpus

cwb-make "$name" word &
cwb-make "$name" pos &
cwb-make "$name" lemma &
cwb-make "$name" lemma_pos &
cwb-make "$name" lower &
cwb-make "$name" prefix &
cwb-make "$name" suffix &
cwb-make "$name" is_digit &
cwb-make "$name" like_num &
cwb-make "$name" dep &
cwb-make "$name" shape &
cwb-make "$name" tag &
cwb-make "$name" sentiment &
cwb-make "$name" is_alpha &
cwb-make "$name" is_stop &
cwb-make "$name" head &
cwb-make "$name" head_pos &
cwb-make "$name" children &
cwb-make "$name" lefts &
cwb-make "$name" rights &
cwb-make "$name" n_lefts &
cwb-make "$name" n_rights &
cwb-make "$name" ent_type &
cwb-make "$name" ent_iob &
cwb-make "$name" morph &
cwb-make "$name" startsecs &
cwb-make "$name" startcentisecs &
cwb-make "$name" endsecs &
cwb-make "$name" endcentisecs &
wait
