defmodule RivetMoveTacticStack.DomainReviewTest do
  use ExUnit.Case

  test "domain review lane" do
    item = %{signal: 55, slack: 27, drag: 29, confidence: 67}
    assert RivetMoveTacticStack.DomainReview.score(item) == 117
    assert RivetMoveTacticStack.DomainReview.lane(item) == "watch"
  end
end
