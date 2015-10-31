require "spec_helper.rb"

RSpec.describe Song, :type => :model do

  let(:song) { Song.create(title: 'foo') }
  let(:long_title) { (0...151).map { 'x' }.join }

  it "should be valid" do
    expect(song).to be_valid
  end

  it "should save a title" do
    expect(song.title).to eq('foo')
  end

  it "should have a title longer than 150 characters" do
    expect(song.update(title: long_title)).to be false
  end

  context "has associated artist" do
    it "should have artist" do
      expect(song.create_artist(name: 'foo')).to be_a(Artist)
    end
  end
end
