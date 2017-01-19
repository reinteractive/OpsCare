sidekiq_service_name="sidekiq-${app_full_name}"

stop_sidekiq(){
  sudo service ${sidekiq_service_name} stop
}

start_sidekiq(){
  sudo service ${sidekiq_service_name} start
}

restart_sidekiq(){
  stop_sidekiq
  start_sidekiq
}

soft_stop_sidekiq(){
  sidekiq_init_script="/etc/init.d/${sidekiq_service_name}"
  if [ -f $sidekiq_init_script ] ; then
    echo "executing ${sidekiq_init_script} $1"
    $sidekiq_init_script soft_stop
  else 
    service ${sidekiq_service_name} reload
  fi
}
