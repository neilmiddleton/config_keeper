class HerokuWrapper

  attr_accessor :user, :connection

  def initialize(user)
    @user = user
  end

  def user
    @user
  end

  def connection
    @connection ||= Heroku::API.new(api_key: user.api_token)
  end

  def apps
    connection.get_apps.body.collect{|a| App.new a }
  end

  def app(name)
    App.new connection.get_app(name).body
  end

  def config_for(name)
    connection.get_config_vars(name).body.collect do |k,v|
      Key.new(name: k, value: v)
    end
  end
end
