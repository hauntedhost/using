defmodule Using.Importer do
  defmacro __using__(_) do
    quote do
      import Using.Helpers
    end
  end
end
