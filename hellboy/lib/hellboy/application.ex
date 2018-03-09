defmodule Hellboy.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Starts a worker by calling: Hellboy.Worker.start_link(arg)
      # {Hellboy.Worker, arg},
    ]

    opts = [strategy: :one_for_one, name: Hellboy.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
