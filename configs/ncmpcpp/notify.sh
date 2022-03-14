#!/bin/bash

# Send notification when ncmpcpp plays a new song
# execute_on_song_change must be set in ncmpcpp config

notify-send -t 5000 "$(mpc --format '%artist%' current)" "$(mpc --format '%title%' current)"
