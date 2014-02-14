require_relative 'model_module.rb'

class ToDoListUI

  attr_reader :view

  def initialize
    @view = View.new
    view.welcome
    run!
  end

  def run!
    grab_user_input
    sanitize_user_input
  end

  # def sanitize_user_input
  #   view.check_user_input
  # end

  def grab_user_input
    view.get_command
  end

  def update_task(input)

  end

end
