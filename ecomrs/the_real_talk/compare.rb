require_relative "profiler"
require_relative "bad"
require_relative "new"

class Comparerer
  def initialize
    @old = TestClass.new
    @new = NewClass.new
  end

  def run
    [ :map, :reduce, :select ].each do |method|
      compare_methods(method)
    end
  end

  private

  def compare_methods(method)
    puts "### #{method.to_s.upcase} ###"
    puts "Old way:"
    old_time = profile { @old.send(method) }
    puts old_time

    puts "\nNew way:"
    new_time = profile { @new.send(method) }
    puts new_time

    puts "\nImprovement: #{((1 - (new_time / old_time)) * 100).round}%"
  end
end

Comparerer.new.run
