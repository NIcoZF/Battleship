class BoardCase

  attr_accessor :value
  def initialize(id)
    @value = '-' # default - or Hit or Miss 
    @id = id
  end
end