import Config

config :elixir_teste, ElixirTeste.Agendador, jobs: [
    # Every minute
    {"* * * * *", fn -> GenServer.cast(:servidor_aleatorio, :escreve) end}
  ]
