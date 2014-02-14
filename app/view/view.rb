
# puts "Put your application code in #{File.expand_path(__FILE__)}"

class View

  def welcome
    puts "Welcome to ToDoList! What would you like to do? (Type 'help' at anytime for a list of commands.)"
  end

  def quit
    puts "Goodbye"
  end

  def print_tasks(tasks)
    tasks.each_with_index{|task,index| puts "#{index + 1}.\t#{task}"}
  end

  def menu
    puts  <<-PAR
        Here are your options:
        1  - Create a task
        2  - Set a task to completed
        3  - Set a task to incomplete
        4  - See all tasks
        5  - Delete a task
        6  - Quit

        Input a number:
      PAR
  end

  def update_menu
    puts "Insert the text you want to change."
  end

  def choose_task
    puts "Insert the task number:"
  end

  def complete_task_menu
    puts "Choose a task to complete!"
  end

  def incomplete_menu
    puts "Choose a task to set as incomplete!"
  end

  def delete_menu
    puts "Choose a task to delete!"
  end

  def create_task_menu
    puts "Please input the contents of the task:"
  end

  def get_input
    print "input:   "
    gets.chomp
  end
end

# ToDoListUI.new
bob = View.new
puts bob.menu
