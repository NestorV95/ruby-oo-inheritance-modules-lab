require 'pry'

class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name, artist)
    @name = name
    @artist = artist #points to object
    self.class.all << self
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

  def to_param
    name.downcase.gsub(' ', '-')
  end

end
