#!/bin/bash


AMIXER_CMD=/usr/bin/amixer

$AMIXER_CMD -q -c0 -Dhw:sndrpiwsp cset numid=160 0