feature 'user browses list of links' do
  
  before(:each) do
  	Link.create(url: "https://www.somesite.com",
  	            title: "Some Site")
  end

  scenario 'when opening home page, user sees list of added links' do
  	visit '/'
  	expect(page).to have_content 'Some Site'
  end

end