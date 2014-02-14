class Task < ActiveRecord::Base

  def self.grab_task(id)
    self.find(id)
  end

  def self.show_completed
    self.where(complete: 1).each_with_index { |task| puts }
  end

  def self.show_uncompleted
    self.where(complete: 0).each { |task| puts }
  end

  def complete_task
    self.complete = 1
    save
  end

  def uncomplete_task
    self.complete = 0
    save
  end

  # def self.delete_index(index)
  #   task_id = self.all[index].id
  #   delete_task(task_id)
  # end

  def delete_task(id)
    self.find(id).destroy
  end

  def update_content(text)
    self.contents = text
    save
  end

  def to_s
    compl = complete == 0 ?  " " : "X"
    "[#{compl}] #{contents} created on: #{created_at}"
  end
end
