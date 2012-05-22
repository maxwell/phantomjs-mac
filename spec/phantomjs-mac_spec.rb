  require 'spec_helper'

describe Phantomjs do
  describe '.executable_path' do
    it 'works' do
      File.exists?(Phantomjs.executable_path).should == true
    end

    it 'points to a mac path' do
      Phantomjs.executable_path.should match /mac/
    end
  end
end