require 'player'

describe Player do
  it 'returns player name' do
    subject = Player.new("Ed")
    expect(subject.name).to eq 'Ed'
  end

  it '#attack minuses 10HP from total' do
    subject = Player.new("Ed")
    subject.attack
    expect(subject.HP).to eq(90)
  end
end
