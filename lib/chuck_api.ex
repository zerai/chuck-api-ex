defmodule ChuckApi do
  @moduledoc """
  [Chuck Norris Joke](https://api.chucknorris.io/) API Client
  """

  @doc """
  Hello world.

  ## Examples

      iex> ChuckApi.hello()
      :world

  """
  def hello do
    :world
  end

  @doc """
  Get random joke.

  """
  def get_random_joke() do
    url = "https://api.chucknorris.io/jokes/random"

    response =
      HTTPoison.get!(url)

    Poison.decode!(response.body)
  end
end
