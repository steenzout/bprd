defmodule LizSherman.Application do
  @moduledoc false
  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Starts a worker by calling: LizSherman.Worker.start_link(arg)
      # {LizSherman.Worker, arg},
    ]

    opts = [strategy: :one_for_one, name: LizSherman.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
