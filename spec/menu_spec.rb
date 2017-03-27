require 'menu'

describe Menu do
  subject(:menu) { described_class.new(dishes) }
  let(:dish) { double :dish }
  let(:price) { double :price }
  let(:dishes) do
    {
      chicken: 12.50,
      pizza: 10.00,
      pasta: 8.99,
      steak: 25.99
    }
  end

  it 'has a list of dises with prices' do
    expect(menu.dishes).to eq dishes
  end
  describe '#initialization' do
    it 'should create an empty menu hash' do
      expect(menu.dishes).to_not be_empty
    end
  end

  describe '#print_menu' do
    it 'prints the menu with prices' do
      printed_menu = "Chicken £12.50, Pizza £10.00, Pasta £8.99, Steak £25.99"
      expect(menu.print_menu).to eq printed_menu
    end
  end

  describe '#contain_item?' do
    it 'should return true if dish exists' do
      expect(menu.contain_item?("Chicken")).to eq true
    end
  end

  describe '#dish_price' do
    it 'should return the price of an item' do
      allow(menu).to receive(:dishes).and_return ({dish => price})
      expect(menu.dish_price(dish)).to eq price
    end
  end


end
