require_relative '../lib/actor'

describe Actor do
  it 'has zero hit points' do
    actor = Actor.new

    expect(actor.current_hit_points).to eq(0)
  end

  it 'has a location, which is an array' do
    actor = Actor.new

    expect(actor.location).to eq([0, 0])
  end

  it 'is owned by the null player' do
    actor = Actor.new

    expect(actor.player).to eq(:null_player)
  end

  it 'has a null order' do
    actor = Actor.new

    expect(actor.order).to eq(:null_order)
  end

  it 'has mineral and gas costs to be built' do
    expect(Actor.cost).to eq([0, 0])
  end

  it 'has mineral cost to be built' do
    expect(Actor.mineral_cost).to eq(0)
  end

  it 'has gas cost to be built' do
    expect(Actor.gas_cost).to eq(0)
  end

  it 'knows how long it takes to be built' do
    expect(Actor.build_time).to eq(0)
  end
end
