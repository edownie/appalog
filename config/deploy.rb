set :application, "appalog"
set :repository,  "git@github.com:edownie/appalog.git"
set :user, "rich"
set :use_sudo, false
set :deploy_to, "/home/#{user}/sites/#{application}"
set :keep_releases, 3

set :scm, :git

set :domain, "appalog.richdownie.com"
server domain, :app, :web
role :db, domain, :primary => true

namespace :passenger do
  desc <<-DESC
Restarts your application. \
This works by creating an empty `restart.txt` file in the `tmp` folder
as requested by Passenger server.
DESC
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end
  
  desc <<-DESC
Starts the application servers. \
Please note that this task is not supported by Passenger server.
DESC
  task :start, :roles => :app do
    logger.info ":start task not supported by Passenger server"
  end
  
  desc <<-DESC
Stops the application servers. \
Please note that this task is not supported by Passenger server.
DESC
  task :stop, :roles => :app do
    logger.info ":stop task not supported by Passenger server"
  end
end
after "deploy", "deploy:cleanup"
after "deploy:update_code", "db:symlink"
 
namespace :deploy do
  desc <<-DESC
Restarts your application. \
Overwrites default :restart task for Passenger server.
DESC
  task :restart, :roles => :app, :except => { :no_release => true } do
    passenger.restart
  end
  
  desc <<-DESC
Starts the application servers. \
Overwrites default :start task for Passenger server.
DESC
  task :start, :roles => :app do
    passenger.start
  end
  
  desc <<-DESC
Stops the application servers. \
Overwrites default :start task for Passenger server.
DESC
  task :stop, :roles => :app do
    passenger.stop
  end
end

namespace :db do
  desc "Symlink database.yml into the shared config directory"
  task :symlink do
    run "ln -nfs #{release_path}/config/database.yml.example #{shared_path}/config/database.yml"
  end
end