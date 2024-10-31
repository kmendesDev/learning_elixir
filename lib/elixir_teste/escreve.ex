defmodule Mix.Tasks.Escreve do  # Criando uma tarefa
    @moduledoc """
    Documentação completa da tarefa.

    'mix escreve'
    """

    use Mix.Task
    @shortdoc "Escreve um número aleatório no arquivo.txt" # Documentação curta
    def run(_) do
      IO.puts("Executando o módulo escreve")
      ElixirTeste.EscreveNumeroAleatorio.escreve
    end
    end
