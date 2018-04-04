defmodule AbeSapien.Derotator do

  def bin(list, key, acc \\ [])
  def bin([], _, acc) do
    acc
  end
  
  # bin([1, 2], key, [])
  # val = 1
  # rest = [2]
  # acc = []
  
  def bin([val | tail], key, acc) do    
    # derotate_bin([2], key, [decrypted 1])
    char = val - key

    bin(tail, key, char ++ acc)
  end
end
