#!/bin/bash
# random-string.sh [N]
# prints  a random alphanumeric string of N chars (default 10)

random_string() { # LC_ALL=C avoids unicode multibyte mess
    LC_ALL=C tr -dc 'a-zA-Z0-9' < /dev/urandom 2>/dev/null | head -c "${1:-12}"
}

n="${1//[^[0-9]/}"
(( n < 1 )) && n=12
random_string "$n"
echo
