#!/bin/bash

previous_working_dir=$PWD
cd $current_app_path

version=$(bundle exec rake opscare:healthcheck:default)

if [ "$version" != "$requested_sha" ]; then
  echo "Healthcheck SHA ($version) doesn't match the requested one ($requested_sha)."
  exit 1
fi

# cd back in cwd
cd $previous_working_dir
