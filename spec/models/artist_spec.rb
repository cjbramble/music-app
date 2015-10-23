require 'rails_helper'

RSpec.describe Artist, :type => :model do
  it "should have a name" do
    expect(Artist.new(name: 'foo')).to be_valid
  end
end
