# Using

I would like to import functions from one module into another module.

Given this code:

```elixir
defmodule Using do
  use Using.Importer
end

defmodule Using.Importer do
  defmacro __using__(_) do
    quote do
      import Using.Helpers
    end
  end
end

defmodule Using.Helpers do
  def hello, do: "world"
  def greeting(name), do: "hello #{name}"
end
```

I would expect to be able to call `Using.hello/0` and `Using.greeting/1` directly. But they are not in scope.
