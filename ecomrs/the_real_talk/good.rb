class NewClass
  def initialize
    # Big array
    @array = (0..1000000).to_a
  end

  # Map
  def map
    @array.map { |x| x * 2 }
  end

  # Reduce
  def reduce
    @array.reduce(:+)
  end

  # Select
  def select
    @array.select do |x|
      x.even?
    end
  end
end
