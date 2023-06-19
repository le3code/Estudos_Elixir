defmodule Guss do

  def run() do

    IO.puts("Lest`s play Guess the Number: ")
    IO.puts()

    IO.gets("Pick a difficuts leve(1,2 or 3,4): ")
    IO.puts("")
    |> Integer.parse()
    |> parse_input()
    |> get_renage()
    |> IO.inspect()


  end

  def parse_input(:error) do

    IO.puts("Invalid Input!")
    IO.puts("")
    run()

  end

  def parse_input({num, _}) do
    num
  end

  def get_renage(level) do

    case level do

      1 -> 1..100
      2 -> 1..1000
      3 -> 1..10000
      _ -> IO.puts("invalid Level")
      IO.puts("")
      run()

    end

  end

end
#-------------------------------
Guss.run()
