require 'spec_helper'

describe HerokuWrapper do

  subject { HerokuWrapper.new(User.new(api_token: 'foo')) }

  it { should respond_to :user }
  it { should respond_to :connection }
  it { should respond_to :apps }
  it { should respond_to :app }
  it { should respond_to :config_for }

  #TODO: Write more tests here - figure out how to VCR it withou comprimising
  # API Keys

end



