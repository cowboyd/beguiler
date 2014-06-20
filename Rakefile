require "bundler/gem_tasks"

require "rake/extensiontask"
Rake::ExtensionTask.new("native", eval(File.read("beguiler.gemspec"))) do |ext|
  ext.ext_dir = "ext/beguiler"
  ext.lib_dir = "lib/beguiler"
  ext.source_pattern = "*.{c,h}"
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |task|
  # no customizations
end
