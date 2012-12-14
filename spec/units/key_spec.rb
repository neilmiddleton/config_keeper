require 'spec_helper'

describe Key do
  it { should respond_to :name }
  it { should respond_to :value }

  it { should allow_mass_assignment_of :name }
  it { should allow_mass_assignment_of :value }

  it { should respond_to :tags }
  it { should respond_to :apps }

  it 'should store a key when asked' do
    Key.count == 0
    Key.store('foo', 'bar')
    Key.count.should == 1
    key = Key.first
    expect(key.name).to eq("foo")
    expect(key.value).to eq("bar")
  end

  it 'lets me mark a key with a tag' do
    key = Key.new(name: 'foo', value: 'bar')
    key.tag_list = 'test'
    expect(key.tag_list).to eq(['test'])
  end

  it 'lets me mark a key with an app' do
    key = Key.new(name: 'foo', value: 'bar')
    key.app_list = 'test_app_1'
    expect(key.tags).to eq([])
    expect(key.app_list).to eq(['test_app_1'])
  end
end
