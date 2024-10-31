defmodule ElixirTeste.ServidorAleatorio do
  use GenServer

  def start_link(_) do #starts a link between the caller and the created process.
    GenServer.start_link(__MODULE__, :ok, name: :servidor_aleatorio) # (module, msg of init, server_name)
  end


  def init(:ok) do
    {:ok, %{}} #:ok = worked; %{} = initial state is empty
  end

  def handle_cast(:escreve, _) do  # Assíncrono
    ElixirTeste.EscreveNumeroAleatorio.escreve
    {:noreply, %{}} # It doesn't need to response. State maintains empty.
  end
end
