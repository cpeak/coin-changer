require 'coin_changer'
describe 'make change' do

  [[1,[1]],
    [2,[1,1]],
    [3,[1,1,1]],
    [5,[5]],
    [6,[5,1]],
    [7,[5,1,1]],
    [10,[10]],
    [11,[10,1]],
    [15,[10,5]],
    [16,[10,5,1]],
    [20,[10,10]],
    [21,[10,10,1]],
    [25,[25]],
    [26,[25,1]],
    [30,[25,5]],
    [36,[25,10,1]],
    [42,[25,10,5,1,1]],
  ].each do |amount, coin|
    it "makes change for #{amount}" do
      CoinChanger.make_change(amount).should == coin
    end
  end

end
