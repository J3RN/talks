class AdvancedExamples
  # Merge this array of hashes together
  def merge_hashes(hashes)
    new_hash = {}

    hashes.each do |hash|
      new_hash.merge!(hash)
    end

    new_hash
  end

  # Get the nested value, specified path a path (Array) of keys
  def get_nested_value(keys)
    hash = {"deeply" => {"nested" => {"value" => 42}}}

    new_hash = hash.dup
    keys.each do |key|
      new_hash = new_hash[key]
    end

    new_hash
  end

  # Return an subset of the given array containing only keys that exist in the
  # hash (in the order they are given)
  def return_real_keys(keys)
    hash = {"deeply" => {"nested" => {"value" => 42}},
            "real" => {"keys" => { "not_me" => 31}}}

    real_keys = []
    temp_hash = hash.dup

    keys.each do |key|
      if temp_hash[key]
        temp_hash = temp_hash[key]
        real_keys << key
      end
    end

    real_keys
  end
end
