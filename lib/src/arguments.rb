# the main argument parser
# this commit is added to fix the indentation issue with
# github

class ArgumentParser
  def initialize(command_arguments)
    @command_arguments = command_arguments
  end

  # get the argument file name
  # determine the length of the command arguments
  # if length == 0, return nil(null)
  # else, read the file and return the splitted string
  def get_argument_file_name(command_arguments)
    argument_length = command_arguments.length

    if argument_length == 0
      nil
    else
      command_arguments[0]
    end
  end

  # get the filename and evaluate the filename
  # extension(the extension must be .brl)
  def start_argument_parsing
    file_name = evaluate_file_name(get_argument_file_name(@command_arguments))
    get_specified_file_content(file_name)
  end

  # if the filename is nil, return nil
  # else, check if the filename endswith .brl
  # if yes, return the filename
  # else, throw a runtime error
  def evaluate_file_name(file_name)
    unless file_name.nil?
      if file_name.end_with?(".brl")
        file_name
      else
        raise "Unknow extension(expected .brl)"
      end
    end
  end

  # check if the file exists and the filename
  # is a file(and not a directory), and read the
  # file, else throw a RuntimeError
  def get_specified_file_content(file_name)
    exit if file_name.nil?
    if File.exist?(file_name) && File.file?(file_name)
      File.open(file_name).read.split
    else
      raise "Cannot read file #{file_name}"
    end
  end
end
