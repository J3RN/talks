cond_test = fn(a,b) ->
  case a*b do
    10 ->
      "10"
    20 ->
      "20"
    _ ->
      "Who knows!?"
  end
end

IO.puts cond_test.(5,2)
IO.puts cond_test.(5,4)
IO.puts cond_test.(5,6)
