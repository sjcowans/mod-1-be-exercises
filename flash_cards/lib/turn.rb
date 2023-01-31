class Turn
  attr_accessor :string, :card
  def initialize(string, card)
    @string = string
    @card = card
  end

  def guess 
    @string
  end

  def card
    @card
  end

  def correct?
    @string == @card 
  end
  
  def feedback
    if @string == @card then p "Correct!"
    else p "Incorrect."
    end
  end
end

