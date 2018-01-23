whenever_bin="${this_release_dir}/bin/whenever"

wheneverize(){
  if [ -f ${whenever_bin} ] ; then
    cd ${this_release_dir}
    ${whenever_bin} --update-crontab ${app_full_name} --set "environment=${FRAMEWORK_ENV}"
  fi
}

wheneverize_worker(){
  if [[ "${SERVER_ROLE}" == "worker" ]] ; then
    wheneverize
  fi
}
