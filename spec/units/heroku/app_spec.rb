require 'spec_helper'

describe Heroku::App do

  it { should respond_to :name }

  it { should validate_uniqueness_of :name }

  it { should respond_to :get_key }
  it { should respond_to :set_key }

end
