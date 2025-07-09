class Todo
  def initialize
    @tasks = []
  end

  def run
    loop do
      puts "\nTo-Do List Manager"
      puts "1. Add Task"
      puts "2. List Tasks"
      puts "3. Mark Task as Complete"
      puts "4. Delete Task"
      puts "5. Exit"
      print "Choose an option: "
      choice = gets.chomp.to_i

      case choice
      when 1 then add_task
      when 2 then list_tasks
      when 3 then mark_complete
      when 4 then delete_task
      when 5 then break
      else puts "Invalid option!"
      end
    end
  end

  private

  def add_task
    print "Enter task: "
    task = gets.chomp
    @tasks << { name: task, completed: false }
    puts "Task added!"
  end

  def list_tasks
    if @tasks.empty?
      puts "No tasks yet!"
    else
      @tasks.each_with_index do |task, index|
        status = task[:completed] ? "[✓]" : "[ ]"
        puts "#{index + 1}. #{status} #{task[:name]}"
      end
    end
  end

  def mark_complete
    list_tasks
    print "Enter task number to mark complete: "
    task_num = gets.chomp.to_i - 1

    if task_num.between?(0, @tasks.size - 1)
      @tasks[task_num][:completed] = true
      puts "Task marked as complete!"
    else
      puts "Invalid task number!"
    end
  end

  def delete_task
    list_tasks
    print "Enter task number to delete: "
    task_num = gets.chomp.to_i - 1

    if task_num.between?(0, @tasks.size - 1)
      @tasks.delete_at(task_num)
      puts "Task deleted!"
    else
      puts "Invalid task number!"
    end
  end
end 
