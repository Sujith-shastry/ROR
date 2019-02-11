# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "my_app_name"
set :repo_url, "git@example.com:me/my_repo.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure

# be sure to change these values
user = 'rubys'
domain = 'depot.pragprog.com'
# adjust if you are using RVM, remove if you are not
set :rvm_type, :system
set :rvm_ruby_string, 'ruby-2.3.1'
# name of your application
set :application, 'depot'
# file paths
set :repo_url, "#{user}@#{domain}:git/#{fetch(:application)}.git"
set :deploy_to, "/home/#{user}/deploy/#{fetch(:application)}"
# distribute your applications across servers (the instructions below put them
# all on the same server, defined above as 'domain', adjust as necessary)
role :app, domain
role :web, domain
role :db, domain
#As Capistrano executes in a non-interactive mode and therefore doesn't cause
#any of your shell profile  scripts to be run, the following might be needed
#if (for example) you have locally installed gems or applications. Note:
#this needs to contain the full values for the variables set, not simply
#the deltas.
#
#set :default_environment, {
#'PATH' => '<your paths>:/usr/local/bin:/usr/bin:/bin',
#'GEM_PATH' => '<your paths>:/usr/lib/ruby/gems/1.8'
#}
#
#See https://rvm.io/deployment/capistrano#environment for more info.













