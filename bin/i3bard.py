#!/usr/bin/env python3
import time
import subprocess
import re
import logging

DELAY = 0.25
SHOW_CMD = 'i3-msg "bar hidden_state show"'
HIDE_CMD = 'i3-msg "bar hidden_state hide"'

logging.basicConfig(level=logging.INFO)

def get_y_position():
    xdotool_output = subprocess.check_output(
        'xdotool getmouselocation --shell',
        shell=True).decode('utf-8')
    return int(re.search(r'Y=(\d{1,})', xdotool_output).groups()[0]) + 1

hidden = True
subprocess.call(HIDE_CMD, shell=True)
while True:
    y = get_y_position()
    on_edge = y < 35
    on_very_edge = y < 5
    logging.info("Got height %d. On edge: %s. Very edge: %s.", y, str(on_edge), str(on_very_edge))
    if on_very_edge and hidden:
        subprocess.call(SHOW_CMD, shell=True)
        hidden = False
    elif (not on_edge) and (not hidden):
        subprocess.call(HIDE_CMD, shell=True)
        hidden = True
    time.sleep(DELAY)
