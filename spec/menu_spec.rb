require 'menu'

describe Menu do
  subject(:menu) { described_class.new(dishes) }
  let(:dishes) do
    {
      chicken: 12.50,
      pizza: 10.00,
      pasta: 8.99,
      steak: 25.99
    }
  end

  describe '#initialization' do
    it 'should create an empty menu hash' do
      expect(menu.dishes).to_not be_empty
    end

    it 'has a list of dises with prices' do
      expect(menu.dishes).to eq dishes
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
      expect(menu.contain_item?(:pizza)).to be true
    end

    it 'should return false if dish not on the menu' do
      expect(menu.contain_item?(:fish)).to be false
    end
  end

  describe '#dish_price' do
    it 'should return the price of an item' do
      expect(menu.dish_price(:steak)).to eq dishes[:steak]
    end
  end


end
