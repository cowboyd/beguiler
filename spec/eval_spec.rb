require "spec_helper"

describe "simple eval" do
  before do
    @scheme = Beguiler::Context.new
  end

  it "can evaluate 1 + 1" do
    expect(@scheme.evaluate "(+ 1 1)").to eq 2
  end
end
