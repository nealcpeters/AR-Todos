
# puts "Put your application code in #{File.expand_path(__FILE__)}"

class View

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

  def welcome
    puts "Welcome to ToDoList! What would you like to do? (Type 'help' at anytime for a list of commands.)"
  end

  def quit
    puts "Goodbye"
  end

  def print_all_tasks(tasks)
    tasks.each_with_index{|task,index| puts "#{index}.\t#{task}"}
  end




end

# ToDoListUI.new
bob = View.new
puts bob.menu
