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
    system "xctool -workspace QuickPerformance.xcworkspace -scheme QuickPerformance -destination platform='iOS Simulator,OS=9.3,name=iPhone 6s' run-tests -parallelize -test-sdk iphonesimulator9.3"
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
