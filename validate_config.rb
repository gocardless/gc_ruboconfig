require 'rubygems'

Bundler.require(:default)

require 'rubocop'

def capture_stdout
  StringIO.new.tap do |stdout|
    $stdout = stdout
    yield
    $stdout = STDOUT
  end
end

# Some problems with the configuration file will raise an exception and blow up,
# outputting a message and exiting with a non-zero code so CI turns red. But we
# also want to do the same for issues Rubocop only considers a warning. To do that,
# we'll capture output to stdout (where the warnings are sent) and if anything was
# outputted, we'll output it so the user can see it and exit with a non-zero code.
captured_stdout = capture_stdout do
  RuboCop::ConfigLoader.load_file('rubocop.yml')
end

unless captured_stdout.string.empty?
  puts "Warnings: #{captured_stdout.string}"
  exit(1)
end

exit(0)
