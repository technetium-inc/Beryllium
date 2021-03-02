
class ArgumentParser
	def initialize(command_arguments)
		@command_arguments = command_arguments
	end

	def get_argument_file_name(command_arguments)
		argument_length = command_arguments.length()

		if argument_length == 0
			return nil
		else
			return command_arguments[0]
		end
	end

	def start_argument_parsing()
		file_name = evaluate_file_name(get_argument_file_name(@command_arguments))
		return get_specified_file_content(file_name)
	end

	def evaluate_file_name(file_name)
		if file_name != nil
			if file_name.end_with?(".brl")
				return file_name
			else
				raise RuntimeError.new("Unknow extension(expected .brl)")
			end
		else
			return nil
		end
	end

	def get_specified_file_content(file_name)
		if File.exists?(file_name) and File.file?(file_name)
			return File.open(file_name).read().split
		else
			raise RuntimeError.new("Cannot read file #{file_name}")
		end
	end
end