require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    song.save
    song
  end

  def self.new_by_name(song_name)
      song = self.new
      song.name = song_name
      song
  end

  def self.create_by_name(song_name)
    song = self.new
    song.save
    song.name = song_name
    song
  end

  def self.find_by_name(song_name)
    @@all.detect {|song| song.name == song_name}
  end

  def self.find_or_create_by_name(song_name)
    #binding.pry
    if self.find_by_name(song_name) == nil
      self.create_by_name(song_name)
    else
    end
  end

  def self.alphabetical
    all.sort
  end

  def self.new_from_filename(filename)

  end

  def self.create_from_filename(filename)

  end

  def self.destroy_all
    self.all.clear
  end
end
