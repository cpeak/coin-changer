class CoinChanger
  COINS = [25,10, 5, 1]
  def self.make_change(amount)
    change = []

    COINS.each do |coin|
      while amount >= coin
        change << coin
        amount -= coin
      end
    end
    change
  end
end
