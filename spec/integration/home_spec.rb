require 'spec_helper'

describe 'home page' do
  it 'welcomes the user', :js => true do
    visit '/'
    page.should have_content('Witamy w paznokciorobiarce')
  end
  it 'lets the user to choose language', :js => true do
    visit '/'
    click_on "english"
    page.should have_content('New hand design')
  end
end
