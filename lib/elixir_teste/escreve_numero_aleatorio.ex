defmodule ElixirTeste.EscreveNumeroAleatorio do
    def escreve do
      caminho_arquivo = Path.join([:code.priv_dir(:elixir_teste),
      "arquivo.txt"
      ])

      numero_aleatorio = :rand.uniform(1000) # Random number up to 1000
      File.write!(caminho_arquivo, "Número: #{numero_aleatorio}") #writes (! gives an exception if have errors)
    end
end
