defmodule Recur do
  def stringify(list, acc) do
    if (length(list) > 0) do
      stringify(tl(list), acc <> to_string(hd(list)))
    else
      acc
    end
  end
end
