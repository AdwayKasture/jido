defmodule Mix.Tasks.Jido.InstallTest do
  use ExUnit.Case, async: true
  import Igniter.Test

  test "it warns when run" do
    # generate a test project
    test_project()
    |> Igniter.compose_task("jido.install", [])
    |> assert_has_notice("Jido installed successfully!")
  end
end
