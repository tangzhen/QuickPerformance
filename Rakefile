require 'colorize'
require './script/util'

##############################################################################
# Standard tasks
##############################################################################
task :default do
  system 'rake --tasks'
end

desc 'Run all tests'
task :run do
  puts('Run all tests')
  if check_env?
    puts 'haha'
  end
end

##############################################################################
# Private Methods
##############################################################################

private

def check_env?
  if command?('xctool')
    true
  else
    puts "You don't have xctool, please run command 'brew install xctool' install it.".red
  end
end
