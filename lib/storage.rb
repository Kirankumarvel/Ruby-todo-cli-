require 'fileutils'
require 'json'

module Storage
  FILE_PATH = "#{Dir.home}/.todo_list.json".freeze

  def save_tasks(tasks)
    File.write(FILE_PATH, JSON.dump(tasks))
  end

  def load_tasks
    return [] unless File.exist?(FILE_PATH)
    JSON.parse(File.read(FILE_PATH), symbolize_names: true)
  rescue JSON::ParserError
    []
  end
end
