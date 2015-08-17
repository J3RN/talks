class TestClass
  def initialize
    # Big array
    @array = []

    for i in (0..1000000)
      @array << i
    end
  end

  # Map
  def map
    map_arr = []
    @array.each do |x|
      map_arr[x] = @array[x] * 2
    end
    map_arr
  end

  # Reduce
  def reduce
    acc = 0;
    @array.each do |x|
      acc += x
    end
    acc
  end

  # Select
  def select
    filtered_arr = [];
    @array.each do |x|
      if x % 2 == 0
        filtered_arr << x
      end
    end
    filtered_arr
  end
end
