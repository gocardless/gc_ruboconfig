require "rubygems"

Bundler.require(:development)

desc "Validate the Rubocop configuration"
task :validate_rubocop_config do
  $stderr = StringIO.new

  # This will validate the config
  RuboCop::ConfigLoader.load_file("rubocop.yml")

  # Print out the errors to console
  puts $stderr.string

  # Exit with non-zero code so CI will mark as failed
  exit(1) if $stderr.string.size > 0
end

task default: :validate_rubocop_config
