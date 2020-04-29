require 'player'

describe Player do
  it 'returns player name' do
    subject = Player.new("Ed")
    expect(subject.name).to eq 'Ed'
  end
end
