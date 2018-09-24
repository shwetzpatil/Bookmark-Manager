feature 'Viewing the bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content('Bookmark-manager')
  end
end
