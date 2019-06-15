# This task purpose is to provide an endpoint that performs
# a healthcheck on the Rails components of the system.

# Typically, it will be called by a deploy hook,
# to valitdate or abort a deploy.

namespace :opscare do
  namespace :healthcheck do
    desc "Perform generic healthcheck"
    task default: :environment do
      exit 1 unless OkComputer::DefaultCheck.new.success?

      version_check = OkComputer::AppVersionCheck.new.check
      version = version_check[/Version: (.*)/,1]

      # return the sha for bash to compare
      puts "opscare_helthcheck_sha:#{version}"
    end
  end
end
