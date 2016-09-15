require 'spec_helper'

describe Eyeballs::Inspector do

  describe 'inspect' do
    it 'outputs the query plan' do
      expect(Foo.all.eyeballs.inspect).to include 'EXPLAIN for: SELECT "foos".* FROM "foos"'
    end
  end

  describe 'explain' do
    it 'outputs explain' do
      expect(Foo.all.eyeballs.explain).to include 'EXPLAIN for: SELECT "foos".* FROM "foos"'
    end
  end
end
