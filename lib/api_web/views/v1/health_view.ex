defmodule ApiWeb.V1.HealthView do
  use ApiWeb, :view

  alias Api.Health

  def render("index.json", _params) do
    %{
      utc_timestamp: :os.system_time(:millisecond),
      database:      Health.database_ok?
    }
  end
end
