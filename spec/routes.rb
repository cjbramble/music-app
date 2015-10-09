require 'rails_helper'

RSpec.describe "routes to root", :type => :routing do
  it "it routes to root /welcome" do
    expect(:get => "/").to route_to(
    :controller => "welcome",
    :action => "index"
    )
  end
end
