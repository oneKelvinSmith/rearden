RSpec.describe Rearden do
  it 'has a version number' do
    expect(Rearden::VERSION).not_to be nil
  end

  it 'is somewhat wired up to the pusher API' do
    expect(Rearden.push).not_to raise_error
  end
end
