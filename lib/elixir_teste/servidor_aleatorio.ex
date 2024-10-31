defmodule ElixirTeste.ServidorAleatorio do
  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, :ok, name: :servidor_aleatorio) # (modulo, msg, nome_do_serv)
  end

  def init(:ok) do
    {:ok, %{}}
  end

  def handle_cast(:escreve, _) do  # Assíncrono
    ElixirTeste.EscreveNumeroAleatorio.escreve
    {:noreply, %{}} # Não quer responder nada. retorno vazio.
  end
end
