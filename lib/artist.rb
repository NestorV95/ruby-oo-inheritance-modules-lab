require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  # def add_song(song)
  #   @songs << song
  #   song.artist = self
  # end

  # def add_songs(songs)
  #   songs.each { |song| add_song(song) }
  # end

  def to_param
    name.downcase.gsub(' ', '-')
  end

end
