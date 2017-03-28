require 'order'
require 'menu'

describe Order do
  subject(:order) { described_class.new(menu) }
  let(:menu) { double :menu }
  let(:dishes) do
    {
      pizza: 10.00,
      pasta: 8.99
    }
  end

  before do
    allow(menu).to receive(:contain_item?).with(:pizza).and_return true
    allow(menu).to receive(:contain_item?).with(:pasta).and_return true
    allow(menu).to receive(:dish_price).with(:pizza).and_return 10.00
    allow(menu).to receive(:dish_price).with(:pasta).and_return 8.99
  end

  describe '#add' do

    it 'should add selection to basket' do
      order.add(:pasta, 1)
      order.add(:pizza, 1)
      selection = {pasta: 1, pizza: 1}
      expect(order.dishes).to eq selection
    end

    it 'doesn\'t allow items to be added that are not on the menu' do
      allow(menu).to receive(:contain_item?).with(:fish).and_return false
      expect { order.add(:fish, 2) }.to raise_error "Fish not on the menu"
    end

  # describe '#total_price' do
    it 'order total to be sum of items added' do
      order.add(:pasta, 1)
      order.add(:pizza, 2)
      total = 28.99
      expect(order.total_price).to eq total
    end
  end

end
