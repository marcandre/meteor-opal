`var __fs__ = Npm.require('fs'); var __path__ = Npm.require('path');`

class File
  def self.read path
    `#{__fs__}.readFileSync(#{path}).toString()`
  end

  def self.__fs__
    @fs ||= `__fs__`
  end
end
