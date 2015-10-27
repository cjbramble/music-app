require "spec_helper.rb"

RSpec.describe Song, :type => :model do
  it "should have title" do
    expect(Song.new(title: 'foo')).to be_valid
  end
end
