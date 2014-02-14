require_relative '../../config/application.rb'
require_relative '../models/task.rb'


module TodoElement

  def self.get_all_tasks
    Task.all
  end

  def self.add_task(input)
    Task.create(complete: 0, contents: input)
  end

  def self.update_task(id, field, content)
    Task.grab_task(id)
    if field == "text"
      Task.update_content(content)
    else field == "complete"
      if content == true
        Task.complete_task
      else
        Task.uncomplete_task
      end
    end
  end
      #tell UI to raise error to user, show valid options

  #   end
  #   Task.
  #   # update_complete
  #   # update_text
  # end

  # def grab_task(id)
  #   Task.grab_task(id)
  # end

  def self.delete_task(active_record_object, task_number)
    Task.delete_task(self.generate_hash(active_record_object)[task_number])
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

p TodoElement.delete_task(TodoElement.get_all_tasks, 2)
