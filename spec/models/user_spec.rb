require 'spec_helper'

describe User do

  it { should respond_to :api_token }

  it 'knows if you need to supply your API key' do
    u = User.new
    expect(u.api_token_required?).to be_true
    u.api_token = "foobar"
    expect(u.api_token_required?).to be_false
  end

end
