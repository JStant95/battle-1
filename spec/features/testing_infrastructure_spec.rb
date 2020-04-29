feature 'Enter and Save names' do
  scenario 'Can run app and check page content' do
    visit('/')
      fill_in :player_1, with: 'Jed'
      fill_in :player_2, with: 'Ed'
      click_on 'Submit'
      expect(page).to have_content('PLAYERS')
      expect(page).to have_content('Jed vs Ed')
  end
end
