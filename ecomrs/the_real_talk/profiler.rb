require "singleton"

class Profiler
  include Singleton

  def profile
    start = Time.now
    yield
    finish = Time.now

    finish - start
  end
end
