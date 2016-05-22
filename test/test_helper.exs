ExUnit.start

Mix.Task.run "ecto.create", ~w(-r SimpleElm.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r SimpleElm.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(SimpleElm.Repo)

