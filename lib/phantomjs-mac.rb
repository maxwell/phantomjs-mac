require "phantomjs-mac/version"

module Phantomjs
  def self.executable_path
    Linux.full_path
  end

  module Mac
    def self.full_path
      File.join(File.dirname(__FILE__), '..', 'vendor', 'phantomjs', 'mac', 'bin', 'phantomjs')
    end
  end
end