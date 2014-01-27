require 'spec_helper'

describe 'commenting' do 

	before do 
		user = create(:user)
		Post.create(title: 'Hello world')
		login_as user
	end

		it "can add a comment to a post" do 
			visit '/posts'
			click_link 'Hello world'
			click_link 'Add a comment'

			
			fill_in	'Comment', with: 'Nice post'
			click_button 'Create Comment'

			expect(page).to have_content 'Nice post'
		end
	end