#!/bin/bash

previous_working_dir=$PWD
cd $current_app_path

healthcheck_output=$(bundle exec rake opscare:healthcheck:default)
regex='opscare_helthcheck_sha:([a-z0-9]+)'
[[ $healthcheck_output =~ $regex ]]
version=${BASH_REMATCH[1]}

if [ "$version" != "$requested_sha" ]; then
  echo "Healthcheck SHA ($version) doesn't match the requested one ($requested_sha)."
  exit 1
fi

# cd back in cwd
cd $previous_working_dir
