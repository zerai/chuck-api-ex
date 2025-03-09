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

  @spec get_random_joke() :: {:error, {:status, integer()} | HTTPoison.Error.t()} | {:ok, any()}
  @doc """
  Retrieve a random chuck joke.

  ## Examples

      iex> ChuckApi.get_random_joke()

  """
  def get_random_joke do
    url = "https://api.chucknorris.io/jokes/random"
    headers = [Accept: "Application/json; Charset=utf-8"]

    case HTTPoison.get(url, headers) do
      {:ok, %HTTPoison.Response{status_code: 200} = response} ->
        {:ok, Jason.decode!(response.body)}

      {:ok, %HTTPoison.Response{status_code: status_code}} ->
        {:error, {:status, status_code}}

      {:error, reason} ->
        {:error, reason}
    end
  end
end
