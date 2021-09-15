#!/bin/bash

set -e

MESSAGE_FILE=$1
BRANCH=$(git branch --show-current)
REGEX="(ch|CH|sc|SC)-?([0-9]+)"

if [[ $BRANCH =~ $REGEX ]]; then
  STORY="[sc${BASH_REMATCH[2]}]"
  CURRENT_MESSAGE=$(cat "$MESSAGE_FILE")
  if [[ $CURRENT_MESSAGE != *"$STORY"* ]]; then
    echo "$STORY $CURRENT_MESSAGE" > "$MESSAGE_FILE"
  fi
fi
