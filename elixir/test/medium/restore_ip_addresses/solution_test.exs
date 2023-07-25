defmodule Medium.RestoreIpAddresses.SolutionTest do
  use ExUnit.Case
  alias Medium.RestoreIpAddresses.Solution

  test "test 0" do
    assert Solution.restore_ip_addresses("25525511135") == ["255.255.11.135", "255.255.111.35"]
  end

  test "test 1" do
    assert Solution.restore_ip_addresses("0000") == ["0.0.0.0"]
  end

  test "test 2" do
    assert Solution.restore_ip_addresses("101023") == ["1.0.10.23", "1.0.102.3", "10.1.0.23", "10.10.2.3", "101.0.2.3"]
  end
end
