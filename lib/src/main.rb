

require_relative './arguments.rb'
require_relative './execute.rb'


def main()
	# get the splitted tokens
	file_content = ArgumentParser.new(ARGV).start_argument_parsing()

	# create a new executor
	execute = Executor.new(file_content)

	# start the execution
	execute.execute()
end

main()