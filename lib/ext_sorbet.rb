# typed: true

require 'sorbet-runtime'
require 'hello_sorbet'

class ExtSorbet
  extend T::Sig

  sig { returns(HelloSorbet) }
  attr_reader :sorbet

  sig { void }
  def initialize
    @sorbet = T.let(HelloSorbet.new, HelloSorbet)
  end

  sig { returns(String) }
  def hello
    @sorbet.hello
  end
end
