#!/bin/bash

echo "spawning the golang app"

# This app can handle the signals so no need to handle them on
# behalf of the application here in the bash script.
exec ./signals
