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

  scenario 'User can update a cat from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a cat'
    fill_in 'Name', with: 'Night'
    fill_in 'Color', with: 'Black'
    click_on 'Add cat'
    expect(page).to have_content 'Night'
    expect(page).to have_content 'Black'
    click_on 'Night'
    expect(page).to have_content 'Night'
    expect(page).to have_content 'Black'
    click_on 'Edit'
    fill_in 'Name', with: 'Fefe'
    fill_in 'Color', with: 'White'
    click_on 'Update cat'
    expect(page).to have_content 'Fefe'
    expect(page).to have_content 'White'
    expect(page).to_not have_content 'Night'
    expect(page).to_not have_content 'Black'
  end
end