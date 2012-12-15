class Heroku::App

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name
  validates :name, presence: true

  def get_key(name)
    # TODO: Add method to get a key from a heroku app
  end

  def set_key(key)
    # TODO: Add method to push a key to a heroku app
  end

end
