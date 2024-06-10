#!/bin/bash

# Check if a command line argument is provided
if [ "$#" -ne 1 ]; then
    echo "No branch specified, using 'main' as default."
    BRANCH="main"
else
    BRANCH=$1
fi

# Update the ref in pubspec.yaml
sed -i '' "/dynamic_online_intl/,/ref: .*/s/ref: .*/ref: $BRANCH/" pubspec.yaml

# Delete the pubspec.lock file to ignore the cached dependencies
rm pubspec.lock
# Update the dependencies
flutter pub get