class Console
  def initialize(input, output)
    @input = input
    @output = output
  end
  def run(presenter)
    @output.puts("Please enter the size of the terrain:")
    presenter.provide_upper_right_coordinates(@input.gets)
    command = @input.gets
    while command != "q" do
      presenter.deploy_rover_to(command)
      @output.puts("Enter commands to navigate rover:")
      presenter.navigate_rover_using(@input.gets)
    end
    presenter.process_output
  end
end
class Presenter
  def initialize(command_processor)
  end
  def provide_upper_right_coordinates(coordinates)
  end
  def deploy_rover_to(coordinates)
  end
  def navigate_rover_using(instructions)
  end
  def process_output
  end
end
