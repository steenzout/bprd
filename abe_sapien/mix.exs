defmodule AbeSapien.MixProject do
   use Mix.Project

   def project do
      [
         app: :abe_sapien,
         version: "0.1.0",
         elixir: "~> 1.6",
         start_permanent: Mix.env() == :prod,
         deps: deps()
      ]
   end

   # Run "mix help compile.app" to learn about applications.
   def application do
      [
         extra_applications: [
            :logger
         ],
         mod: {AbeSapien.Application, []}
      ]
   end

   # Run "mix help deps" to learn about dependencies.
   defp deps do
      [
         # {:agent_toolbelt, path: "../../agent_toolbelt"}
      ]
   end
end
