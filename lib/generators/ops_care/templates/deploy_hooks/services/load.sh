# app servers
. ${this_release_dir}/config/deploy/hooks/services/unicorn-service.sh
. ${this_release_dir}/config/deploy/hooks/services/puma-service.sh

# Worker services
. ${this_release_dir}/config/deploy/hooks/services/delayed-job-service.sh
. ${this_release_dir}/config/deploy/hooks/services/sidekiq-service.sh
. ${this_release_dir}/config/deploy/hooks/services/resque-service.sh
. ${this_release_dir}/config/deploy/hooks/services/pushr-service.sh
. ${this_release_dir}/config/deploy/hooks/services/whenever-service.sh
