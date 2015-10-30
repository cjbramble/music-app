require 'rails_helper'

RSpec.describe Artist, :type => :model do

  let(:artist) { Artist.create(name: 'foo') }
  let(:long_name) { (0...151).map { 'x' }.join }

  it "should be valid" do
    expect(artist).to be_valid
  end

  it "should save the name" do
    expect(artist.name).to eq('foo')
  end

  it "should not have name longer than 150 characters" do
    expect(artist.update(name: long_name)).to be false
  end

  context "has associated songs" do
    it "should have songs" do
      expect { artist.songs.create(title: 'foo') }.to change { artist.songs.length }.by(1)
    end
  end
end
