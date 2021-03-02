
class Executor
	def initialize(tokens)
		@tokens = tokens
		@stack = 0
	end

	def execute()
		for each_token in @tokens do 
			each_token = each_token.split("")

			group, command, argument = each_token[0], each_token[1], each_token[2]

			if group == "!" then
				break
			else
				case group
				when "1"
					if command == "+"
						@stack += 1
					elsif command == "-"
						@stack -= 1
					elsif command == "*"
						begin
							@stack = Integer(argument)
						rescue ArgumentError
							nil
						end
					end
				when "2"
					if command == "+"
						begin
							Integer(argument)
						rescue ArgumentError
							if argument != "_" && argument != "-" then
								print argument
							elsif argument == "_" then
								print " "
							elsif argument == "-" then
								print "\n"
							end
						end
					elsif command == "*"
						begin
							Integer(argument)
						rescue ArgumentError
							nil
						else
							puts argument
						end
					elsif command == "-"
						print @stack
					end
				end
			end

		end
	end
end

