class App

  extend ActiveModel::Naming

  def initialize(hash)
    hash.each do |k,v|
      self.instance_variable_set("@#{k}", v)
      self.class.send(:define_method, k, proc{self.instance_variable_get("@#{k}")})
      self.class.send(:define_method, "#{k}=", proc{|v| self.instance_variable_set("@#{k}", v)})
    end
  end

  def to_param
    name
  end

  def owner
    owner_name || owner_email
  end

end
