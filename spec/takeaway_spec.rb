require 'takeaway'

describe TakeAway do
  subject(:takeaway) { described_class.new(menu: menu, order: order, sms: sms) }

  let(:menu) { double(:menu, print_menu: printed_menu) }
  let(:printed_menu) { "Pizza £10" }
  let(:order) { double(:order, total_price: 18.99) }
  let(:sms) { double :sms }

  let(:dishes) { {pizza: 1, pasta: 1} }

  before do
    allow(order).to receive(:add)
    allow(sms).to receive(:send_sms)
  end


  describe '#show_menu' do
    it 'shows the menu with dishes & prices' do
      expect(takeaway.show_menu).to eq(printed_menu)
    end
  end


  describe '#place_order' do
    it 'can order some available dishes' do
      expect(order).to receive(:add).twice
      takeaway.place_order(dishes)
    end

    it 'knows the order total' do
      total = takeaway.place_order(dishes)
      expect(total).to eq 18.99
    end
  end


end
