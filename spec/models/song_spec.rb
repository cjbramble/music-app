require "spec_helper.rb"

RSpec.describe Song, :type => :model do
  it "validates it has a name"
  it "validates it has a name with less than 150 characters"
  it "validates song is associated with an artist"
end
