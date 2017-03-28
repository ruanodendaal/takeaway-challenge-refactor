require 'sms'
require 'envyable'

describe SMS do

  let(:sms) { described_class.new }

  it 'responds to send_sms with one argument' do
    expect(sms).to respond_to(:send_sms)
  end

end
