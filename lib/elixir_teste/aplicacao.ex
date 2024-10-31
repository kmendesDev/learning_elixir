defmodule ElixirTeste.Aplicacao do
  use Application

  def start(_type, _args) do
    children = [
      # Adiciona o módulo Quantum como o agendador da aplicação
      ElixirTeste.ServidorAleatorio,
      ElixirTeste.Agendador
    ]

    opts = [
      strategy: :one_for_one, # Reinicia um único processo se ele falhar
      name: ElixirTeste.Supervisor
    ]

    # Inicializa o supervisor com a lista de filhos e as opções fornecidas
    Supervisor.start_link(children, opts)
  end
end
