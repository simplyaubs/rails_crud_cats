require 'spec_helper'

feature 'CRUD favorite cats' do
  scenario 'User can create a list of cats' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a cat'
    fill_in 'Name', with: 'Night'
    fill_in 'Color', with: 'Black'
    click_on 'Add cat'
    expect(page).to have_content 'Night'
    expect(page).to have_content 'Black'
  end
end