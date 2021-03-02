class Executor
	def initialize(tokens)
		@tokens = tokens
		@stack = 0
	end

	def execute()
		for token in @tokens do
			group = token.split("")[0]
			command = token.split("")[1]
			arg = token.split("")[2]
			if group == "!" then
				abort
			else
				case group
				when "1"
					case command
					when "+"
						@stack += 1
					when "-"
						@stack -=1
					when "*"
						begin
							@stack = Integer(arg)
						rescue ArgumentError
							nil
						end						
					end
				when "2"
					case command
					when "+"
						begin
							Integer(arg)
						rescue ArgumentError
							if arg != "_" && arg != "-" then
								print arg
							elsif arg == "_" then
								print " "
							elsif arg == "-" then
								print "\n"
							end
						end
					when "*"
						begin
							Integer(arg)
						rescue ArgumentError
							nil
						else
							puts arg
						end
					when "-"
						print @stack
					end
				end
			end
		end
	end
end