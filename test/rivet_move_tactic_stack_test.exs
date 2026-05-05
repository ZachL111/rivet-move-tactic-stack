defmodule RivetMoveTacticStackTest do
  use ExUnit.Case

  test "fixture decisions" do
    signal_case_1 = %{demand: 86, capacity: 86, latency: 25, risk: 12, weight: 11}
    assert RivetMoveTacticStack.score(signal_case_1) == 145
    assert RivetMoveTacticStack.classify(signal_case_1) == "review"
    signal_case_2 = %{demand: 99, capacity: 100, latency: 16, risk: 25, weight: 12}
    assert RivetMoveTacticStack.score(signal_case_2) == 149
    assert RivetMoveTacticStack.classify(signal_case_2) == "review"
    signal_case_3 = %{demand: 100, capacity: 73, latency: 24, risk: 7, weight: 7}
    assert RivetMoveTacticStack.score(signal_case_3) == 180
    assert RivetMoveTacticStack.classify(signal_case_3) == "accept"
  end
end
