#!/bin/bash

# Clone repo if needed
if [ -z "$UPSTREAM_REPO" ]; then
  echo "Cloning main Repository"
  git clone https://github.com/EvamariaTG/EvaMaria.git /EvaMaria
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO"
  git clone "$UPSTREAM_REPO" /EvaMaria
fi

cd /EvaMaria

# Install Python requirements
pip3 install -U -r requirements.txt

# Start bot
echo "Starting Bot...."
python3 bot.py  # Replace with main.py if that's your main entry
