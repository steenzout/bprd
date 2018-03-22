defmodule AbeSapien.MissionProtocol do
   def check_in_with_captain() do
      case Node.ping(:capt@jrichocean) do
         :pong ->
            :rpc.call(:capt@jrichocean, CaptBenDaimio, :check_in, [Node.self()])
         _other ->
            check_in_with_captain()
      end
   end
end
