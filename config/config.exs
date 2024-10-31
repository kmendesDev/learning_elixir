import Config

config :elixir_teste, ElixirTeste.Agendador, jobs: [
    # Calls :servidor_aleatorio with the message :escreve every minute
    {"* * * * *", fn -> GenServer.cast(:servidor_aleatorio, :escreve) end}
  ]
