class ExampleJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts 10 * "-"
    puts(args)
    puts 10 * "-"
  end
end
