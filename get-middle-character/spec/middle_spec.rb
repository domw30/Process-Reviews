require 'middle'

describe 'Acceptance Criteria' do
  it 'will fulfil the requirements for kata' do
    expect(get_middle("testing")).to eq 't'
    expect(get_middle("A")).to eq 'A'
    expect(get_middle("wales")).to eq 'l'
    expect(get_middle('test')).to eq 'es'
    expect(get_middle('london')).to eq 'nd'
    expect(get_middle("middle")).to eq 'dd'
    expect(get_middle("of")).to eq 'of'
  end
end
