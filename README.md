# elixir-with-distillery-docker

# mix, iex

- `mix new NAME`
- `mix deps.get`
  - fetch dependencies
- `mix run -e 'Module.Function(Arguments)'`
- `iex --erl "-kernel shell_history enabled" -S mix`
  - REPL w/ history

# for doc
- add `{ :ex_doc, "~> 0.19.0" }, { :earmark, "~> 1.2.4" }` into deps in mix.exs
- `mix.deps.get`
- `mix doc`

# distillery

- add `{:distillery, "~> 2.0"}` into deps in mix.exs
- `mix do deps.get, compile`
- `MIX_ENV=prod mix release.init`
- `MIX_ENV=prod mix release`
