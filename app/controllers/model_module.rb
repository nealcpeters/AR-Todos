#require_relative '../../config/application.rb'
require_relative '../models/task.rb'


module TodoElement

  def self.get_all_tasks
    Task.all
  end

  def self.add_task(input)
    Task.create(complete: 0, contents: input)
  end

  def self.update_task(task_number, field, content)
    task_number = task_number.to_i
    if task_number.between?(0,Task.all.length)
      task = Task.grab_task(self.generate_hash(self.get_all_tasks)[task_number])
      if field == "text"
       task.update_content(content)
      else field == "complete"
        if content == true
          task.complete_task
        else
          task.uncomplete_task
        end
      end
    else
      "That is not a valid Range"
    end
  end

  def self.delete_task(task_number)
    task_number = task_number.to_i
    if task_number.between?(0,Task.all.length)
      Task.delete_task(self.generate_hash(self.get_all_tasks)[task_number])
    else
      "That is not a valid Range"
    end
  end

  def self.generate_hash(active_record_object)
    index_task_id = {}
    active_record_object.each_with_index do |record, index|
      index_task_id[index+1] = record.id
    end
    index_task_id
  end
end


# p TodoElement.generate_hash(TodoElement.get_all_tasks)

# p TodoElement.delete_task(TodoElement.get_all_tasks, 2)
