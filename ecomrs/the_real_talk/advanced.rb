class AdvancedExamples
  # Merge this array of hashes together
  def merge_hashes(hashes)
    hashes.reduce({}, &:merge)
  end

  # Get the nested value, specified path a path (Array) of keys
  def get_nested_value(keys)
    hash = {"deeply" => {"nested" => {"value" => 42}}}

    keys.reduce(hash) { |acc, x| acc[x] }
  end

  # Return an subset of the given array containing only keys that exist in the
  # hash (in the order they are given)
  def return_real_keys(keys)
    hash = {"deeply" => {"nested" => {"value" => 42}},
            "real" => {"keys" => { "not_me" => 31}}}

    _, path = keys.reduce([hash, []]) do |acc, x|
      if acc[0][key]
        [acc[0][key], acc[1] << key]
      else
        [ {}, acc[1] ]
      end
    end

    path
  end
end
