defmodule RpcExplorerWeb.BlockView do
  use RpcExplorerWeb, :view

  def format_block_age(time) do
    seconds = System.system_time(:second) - time

    cond do
      seconds < 60 -> to_string(seconds) <> " seconds"
      seconds < 3600 -> to_string(trunc(seconds/60)) <> " minutes"
      seconds < 86400 -> to_string(trunc(seconds/3600)) <> " hours"
      true -> to_string(trunc(seconds/86400)) <> " days"
    end
  end
end
