require_relative '../models/task.rb'
require_relative '../../config/application.rb'

module TodoElement
  def self.list_task
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

  def self.delete_task(index)
    #make a hash from the array with the key equal to the index + 1 and the value is the element
  end

  def self.generate_hash(aro)
    aro.each do |record|

    end
  end
end
