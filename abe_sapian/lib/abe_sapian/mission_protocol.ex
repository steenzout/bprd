defmodule AbeSapian.MissionProtocol do
   def check_in_with_captain() do
      case Node.ping(:capt@localhost) do
         :pong ->
            :rpc.call(:capt@localhost, CaptBenDaimio, :check_in, [Node.self()])
         _other ->
            check_in_with_captain()
      end
   end
end
