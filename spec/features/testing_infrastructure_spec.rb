feature 'Enter and Save names' do
  scenario 'Can run app and check page content' do
      sign_in_and_play
      expect(page).to have_content('PLAYERS')
      expect(page).to have_content('Jed vs Ed')
  end
end

feature 'Start Battle' do
  scenario 'Can see HP' do
    sign_in_and_play
    click_on 'Start!'
    expect(page).to have_content('Jed: 100HP')
  end

  scenario 'Can attack player 2' do
    sign_in_and_play
    click_on 'Start!'
    click_on 'Attack'
    expect(page).to have_content('Jed hit Ed')
  end
end
