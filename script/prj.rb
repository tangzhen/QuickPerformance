#!/usr/bin/env ruby

require 'xcodeproj'
require 'erb'

project_path = 'QuickPerformance.xcodeproj'
test_target_name = 'QuickPerformanceTests'
erb_filename = 'QuickPerformanceTests/QuickSpec.swift.erb'
test_file_count = 1000
project = Xcodeproj::Project.open(project_path)

test_target = project.targets.find do |target|
  target.to_s == test_target_name
end

group = project.main_group.find_subpath(test_target_name, true)
group.set_source_tree('SOURCE_ROOT')
file_refs = []
erb_content = File.read(erb_filename)

(0..test_file_count).each { |index|
  test_filename = "QuickSpec#{index}.swift"

  b = binding
  b.local_variable_set(:file_index, index)

  File.write("QuickPerformanceTests/#{test_filename}", ERB.new(erb_content).result(b))

  file_refs << group.new_reference(test_filename)
}

test_target.add_file_references(file_refs)
project.save