
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
    puts
    puts "Your tasks: "
    puts
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

Type 'help' to view the menu options!
      PAR
  end

  def update_menu
    puts
    puts "Insert the text you want to change."
  end

  def choose_task
    puts
    puts "Insert the task number:"
  end

  def complete_task
    puts
    puts "Choose a task to complete!"
  end

  def incomplete_task
    puts
    puts "Choose a task to set as incomplete!"
  end

  def delete_menu
    puts
    puts "Choose a task to delete!"
  end

  def create_task_menu
    puts
    puts "Please input the contents of the task:"
  end

  def task_added
    puts
    puts "Your task has been added!"
  end

  def text_updated
    puts
    puts "Your text has been updated!"
  end

  def task_completed
    puts
    puts "Your task has been marked as completed!"
  end

  def task_uncomplete
    puts
    puts "Your task has been changed to incomplete!"
  end

  def get_input
    puts
    print "Your input: "
    gets.chomp
  end

  def invalid_input
    puts
    puts "Invalid input!"
  end

end
