
# puts "Put your application code in #{File.expand_path(__FILE__)}"

class View
  def welcome
    puts "----------"
    puts "Welcome to ToDoList! What would you like to do?"
    puts "----------"
  end

  def quit
    puts "Goodbye! Have a great day!"
  end

  def print_tasks(tasks)
    tasks.each_with_index{|task,index| puts "#{index + 1}.\t#{task}"}
  end

  def menu
    puts
    puts  <<-PAR
Here are your options:

  1  - Create a task
  2  - Set a task to complete
  3  - Set a task to incomplete
  4  - Change a task's contents
  5  - See all tasks
  6  - Delete a task
  7  - Quit

      PAR
  end

  def update_menu
    puts "Insert the text you want to change."
  end

  def choose_task
    puts "Insert the task number:"
  end

  def complete_task
    puts "Choose a task to complete!"
  end

  def incomplete_task
    puts "Choose a task to set as incomplete!"
  end

  def delete_menu
    puts "Choose a task to delete!"
  end

  def create_task_menu
    puts
    puts "Please input the contents of the task:"
    puts
  end

  def task_added
    puts
    puts "Your task has been added!"
    puts
  end

  def get_input
    print "Your input: "
    gets.chomp
  end
end

# ToDoListUI.new
#bob = View.new
#puts bob.menu
