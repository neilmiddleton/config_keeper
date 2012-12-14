class Key < ActiveRecord::Base

  acts_as_taggable
  acts_as_taggable_on :apps

  validates :name, :presence => true
  validates :value, :presence => true

  attr_accessible :name, :value

  def self.store(name, value)
    create(name: name, value: value)
  end

end
