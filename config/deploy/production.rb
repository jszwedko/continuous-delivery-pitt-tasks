server 'jesseszwedko.com', user: 'pitt', roles: %w{web app db}

set :stage, :production
set :deploy_to, "/home/pitt/app"
set :branch, ENV["REVISION"] || ENV["BRANCH_NAME"] || "master"
set :linked_dirs, %w{bin log tmp/backup tmp/pids tmp/cache tmp/sockets vendor/bundle}

after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  task :restart do
    invoke 'unicorn:reload'
  end
end
