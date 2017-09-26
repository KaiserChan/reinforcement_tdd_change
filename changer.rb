class Changer

  def self.make_change(amount)

    available_coins = [25,10,5,1]
    my_change = []
    remaining_amount = amount

    while remaining_amount > 0 do
      available_coins.each do |coin|
        number_of_largest_coin_applicable = (remaining_amount/coin).to_i
        if number_of_largest_coin_applicable >= 1
          number_of_largest_coin_applicable.times do
          my_change << coin
          remaining_amount -= coin
          end
        end
      end
    end
    my_change

  end

end
