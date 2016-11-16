#!/bin/bash

# # Loading all the services helpers.
# # Don't touch this line
# . ${current_app_path}/config/deploy/hooks/services/load.sh

# soft_stop_sidekiq
# # or
# stop_delayed_job
# # or
# stop_resque

# # For Whenever-based crons
# # schedule.rb file should have this line at the top:
# # set :job_template, "bash -l -c '[[ ! -f /tmp/STOP_CRONS ]] && . /etc/app_description && . $APP_LOCATION/shared/envvars && :job'"
# wheneverize_worker
