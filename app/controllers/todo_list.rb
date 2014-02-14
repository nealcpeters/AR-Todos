# require_relative '../models/task.rb'
require_relative '../../config/application.rb'


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

# class TaskElementController

#   def initialize
#     # @task = Task.new
#     @view = View.new
#     view.welcome
#   end

#   def list_task

#   end

#   def add_task

#   end

#   def update_task(id, field, content)
#     Task.grab_task(id)
#     if field == "text"
#       Task.update_content(content)
#     else field == "complete"
#       if content == true
#         Task.complete_task
#       else
#         Task.uncomplete_task
#       end
#     end
#   end
#       #tell UI to raise error to user, show valid options

#   #   end
#   #   Task.
#   #   # update_complete
#   #   # update_text
#   # end

#   # def grab_task(id)
#   #   Task.grab_task(id)
#   # end


#   def update_complete(id)

#   end

#   # def update_text

#   # end


# end


class View

  def initialize

  end

  def welcome
    puts "Welcome to ToDoList! What would you like to do? (Type 'help' at anytime for a list of commands.)"
  end

  def get_command
    input = gets.chomp
    if input == 'help'
      help_options
    end
    sanitize_user_input
  end

  def sanitize_user_input

  end

  def help_options
    puts "- 'list' will list all your tasks and their statuses\n- 'list by number' will allow you to view your task by its order in the list\n- 'add' will add a task to your ToDoList\n- 'delete' will delete a task from your ToDoList\n- 'complete' will mark your task as complete\n- 'incomplete' will mark your task as incomplete(default is incomplete upon creation)\n"
  end

  def lists_all_tasks

  end

  def check_user_input

  end

end

ToDoListUI.new
