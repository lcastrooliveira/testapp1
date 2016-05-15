require 'rails_helper.rb'

#visit root route
#click create post link
#fill in the form with needed information (title and caption of post)
#click submit button
#expect page to have the content submitted

feature 'Creating Posts' do
  scenario 'can create job' do
    #visit root route
    visit '/'
    #click create post link
    click_link 'Create Post'
    #fill in the form with needed information (title and caption of post)
    fill_in 'Title', with: 'title'
    fill_in 'Caption', with: 'caption'
    #click submit button
    click_button 'Create Post'
    #expect page to have the content submitted
    expect(page).to have_content('title')
    expect(page).to have_content('caption')
  end
end