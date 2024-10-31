defmodule ElixirTeste.Aplicacao do
  use Application

  def start(_type, _args) do
    children = [
      ElixirTeste.ServidorAleatorio,
      ElixirTeste.Agendador
    ]

    opts = [
      strategy: :one_for_one, # Restarts the process once if it stops
      name: ElixirTeste.Supervisor
    ]

    # starts the supervisor:
    Supervisor.start_link(children, opts)
  end
end
