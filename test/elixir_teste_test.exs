defmodule ElixirTesteTest do
  use ExUnit.Case
  doctest ElixirTeste # Testes que usam o exemplo da documentação

  test "greets the world" do # Descrição
    assert ElixirTeste.hello() == :world
  end

 # @tag falha: true
 # test "falha de propósito" do
 #   assert ElixirTeste.hello() != :world
 # end
end
