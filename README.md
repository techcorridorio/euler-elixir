# Src

To run:

    docker-compose run app mix test

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `src` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:src, "~> 0.1.0"}]
    end
    ```

  2. Ensure `src` is started before your application:

    ```elixir
    def application do
      [applications: [:src]]
    end
    ```

