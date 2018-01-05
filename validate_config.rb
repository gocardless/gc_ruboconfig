require 'rubygems'

Bundler.require(:default)

require 'rubocop'

$stderr = StringIO.new

# This will validate the config
RuboCop::ConfigLoader.load_file('rubocop.yml')

# Print out the errors to console
puts $stderr.string

# Exit with non-zero code so CI will mark as failed
exit(1) unless $stderr.string.empty?
