#!/bin/bash

set -e

MESSAGE_FILE=$1
BRANCH=$(git branch --show-current)
REGEX="(ch|CH)-?([0-9]+)"

if [[ $BRANCH =~ $REGEX ]]; then
  STORY="[ch${BASH_REMATCH[2]}]"
  CURRENT_MESSAGE=$(cat "$MESSAGE_FILE")
  if [[ $CURRENT_MESSAGE != *"$STORY"* ]]; then
    echo "$STORY $CURRENT_MESSAGE" > "$MESSAGE_FILE"
  fi
fi
