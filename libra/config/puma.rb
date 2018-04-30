# TODO nginx-puma
#_proj_path = "#{File.expand_path("../..", __FILE__)}"
#_proj_name = File.basename(_proj_path)
#_tmp_path = "#{_proj_path}/tmp"
#
#directory _proj_path
#
#bind "unix://#{_tmp_path}/sockets/puma.sock"
#
#pidfile "#{_tmp_path}/puma.pid"
#state_path "#{_tmp_path}/pids/puma.state"
#
#stdout_redirect "#{_tmp_path}/logs/puma.stdout.log", "#{_tmp_path}/logs/puma.stderr.log", true

# Puma can serve each request in a thread from an internal thread pool.
# The `threads` method setting takes two numbers: a minimum and maximum.
# Any libraries that use thread pools should be configured to match
# the maximum value specified for Puma. Default is set to 5 threads for minimum
# and maximum; this matches the default thread size of Active Record.
#
threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
threads threads_count, threads_count

# Specifies the `port` that Puma will listen on to receive requests; default is 3000.
#
port        ENV.fetch("PORT") { 3000 }

# Specifies the `environment` that Puma will run in.
#
environment ENV.fetch("RAILS_ENV") { "development" }

# Specifies the number of `workers` to boot in clustered mode.
# Workers are forked webserver processes. If using threads and workers together
# the concurrency of the application would be max `threads` * `workers`.
# Workers do not work on JRuby or Windows (both of which do not support
# processes).
#
# workers ENV.fetch("WEB_CONCURRENCY") { 2 }

# Use the `preload_app!` method when specifying a `workers` number.
# This directive tells Puma to first boot the application and load code
# before forking the application. This takes advantage of Copy On Write
# process behavior so workers use less memory.
#
# preload_app!

# Allow puma to be restarted by `rails restart` command.
plugin :tmp_restart
