defmodule CaptBenDaimio do
  @moduledoc """
  Documentation for CaptBenDaimio.
  """

    @agent_call_signs ["abe", "liz", "hel", "joh", "rog"]

    def check_in(node_name) do
        <<agent::bytes-size(3), _::binary>> = Atom.to_string(node_name)
        case agent in @agent_call_signs do
            true -> "Thank You, Agent."
            _else -> "WHO IS THIS AND HOW DID YOU GET THIS FREQUENCY?!"
        end
    end

end
