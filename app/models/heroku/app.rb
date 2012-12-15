class Heroku::App < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true

  def get_key(name)
    # TODO: Add method to get a key from a heroku app
  end

  def set_key(key)
    # TODO: Add method to push a key to a heroku app
  end

end
