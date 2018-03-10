defmodule Hellboy.Router do
  def route(bucket, mod, fun, args) do
    entry =
      Enum.find(table(), fn {enum, _node} ->
        :binary.first(bucket) in enum
      end) || no_entry_error(bucket)

    case elem(entry, 1) == node() do
      true -> apply(mod, fun, args)
      _else ->
        {Hellboy.RouterTasks, elem(entry, 1)}
        |> Task.Supervisor.async(Hellboy.Router, :route, [bucket, mod, fun, args])
        |> Task.await()
    end
  end

  defp no_entry_error(bucket),
    do: raise "could not find entry for #{inspect(bucket)} in table #{inspect(table())}"

  def table do
    [
      {?a..?m, :liz_sherman@localhost},
      {?n..?z, :abe_sapien@localhost}
    ]
  end

end
