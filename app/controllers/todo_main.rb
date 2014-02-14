require_relative 'model_module.rb'
require_relative '../view/view'

class ToDoListUI
 attr_reader :view

  def initialize
    @view = View.new
    view.welcome
    run!
  end

  def run!
    #master loop
    while true
      view.menu
      handle_command(view.get_input)
    end
  end

  def handle_command(input)
    case sanitize_input(input)
    when '1'
      view.create_task_menu
      TodoElement.add_task(view.get_input)
      view.task_added
    when '2'
      view.complete_task
      view.print_tasks(TodoElement.get_all_tasks)
      task_num = view.get_input
      TodoElement.update_task(task_num,'complete', true)
    when '3'
      view.incomplete_task
      view.print_tasks(TodoElement.get_all_tasks)
      task_num = view.get_input
      TodoElement.update_task(task_num,'complete', false)
    when '4'
      view.choose_task
      task_num = view.get_input
      view.update_menu
      TodoElement.update_task(task_num,"text",view.get_input)
    when '5'
      view.print_tasks(TodoElement.get_all_tasks)
    when '6'
      view.choose_task
      TodoElement.delete_task(view.get_input)
    when '7'
      view.quit
      exit
    end
  end

   def sanitize_input(input)
     input.gsub(/\D/,'')
   end
end
