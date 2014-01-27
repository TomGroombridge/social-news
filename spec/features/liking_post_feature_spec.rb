require 'spec_helper'


describe 'liking posts' do 

	before do
		user = create(:user)
		Post.create title: 'first post', user: user
		login_as user
	end

	it "should be able to like a post" do
		visit '/posts'
		click_button 'like'
		expect(page).to have_css '.votes_count', text: '1'
	end

end