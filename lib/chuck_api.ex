defmodule ChuckApi do
  @moduledoc """
  Documentation for `ChuckApi`.
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

  def get_random_joke_by_category(category) do
    url = "https://api.chucknorris.io/jokes/random?category=#{category}"
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
