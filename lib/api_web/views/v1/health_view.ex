defmodule ApiWeb.V1.HealthView do
  use ApiWeb, :view

  def render("index.json", _params) do
    %{utc_timestamp: :os.system_time(:millisecond)}
  end
end
