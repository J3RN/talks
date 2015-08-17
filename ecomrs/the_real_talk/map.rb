require_relative "profiler"

class Map
  def initialize
    @profiler = Profiler.instance
  end

  def run
    # Our big old array
    old_array = (0..1000000).to_a

    puts "Old way:"
    old_time = get_old_time(old_array)
    puts old_time

    puts "\nWith map:"
    map_time = get_map_time(old_array)
    puts map_time

    puts "\nImprovement: #{((1 - (map_time / old_time)) * 100).round}%"
  end

  private

  def get_old_time(old_array)
    @profiler.profile do
      new_array = []

      # Or worse, for i in (0..old_array.length)
      old_array.each do |i|
        new_array[i] = old_array[i] * 2
      end
    end
  end

  def get_map_time(old_array)
    @profiler.profile do
      old_array.map { |i| i * 2 }
    end
  end
end

Map.new.run
