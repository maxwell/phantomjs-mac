require 'spec_helper'

describe Phantomjs do
  describe '.executable_path' do
    it 'works' do
      File.exists?(Phantomjs.executable_path).should eql(true)
    end

    it 'points to a mac path' do
      Phantomjs.executable_path.should match(/mac/)
    end

    it "is executable" do
      File.executable?(Phantomjs.executable_path).should eql(true)
    end

    it "matches the phantomjs version" do
      version = `#{Phantomjs.executable_path} --version`.chomp
      version.should eql(Phantomjs::Mac::VERSION)
    end
  end
end
