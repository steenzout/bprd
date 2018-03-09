defmodule CaptBenDaimio do
  @moduledoc """
  Documentation for CaptBenDaimio.
  """

    def checking_in(:true, node_name) do
        get_agent = fn node_name -> <<agent, "@HollowEarth">> = Atom.to_string(node_name) end
        "Thank you #{get_agent.(node_name)}."
    end

end
