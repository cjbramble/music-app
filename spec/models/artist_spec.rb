require 'rails_helper'

RSpec.describe Artist, :type => :model do
  it "validates a name is present"
  it "validates the name has less than 150 characters"
end
