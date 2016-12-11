#!/usr/bin/env bash

download_audio() {
    name=$1
    youtube_id=$2

    if [ ! -e "$name.m4a" ]
    then
        youtube-dl -f 140 -o "$name.m4a" -x "https://www.youtube.com/watch?v=$youtube_id"
    fi

    if [ ! -e "$name.json" ]
    then
        ../chromaprint/src/cmd/fpcalc -raw -json "$name.m4a" > "$name.json"
    fi
}

#download_audio 'limitless_skyward' 'TOrTSwrPB9M'
#download_audio 'fabian_lentsch' 'YlFFKbulFW0'

download_audio 'titan' 'NIA7os73T_0'
download_audio 'keep_your_tips_up' 'wyrAUJCkDDc'
