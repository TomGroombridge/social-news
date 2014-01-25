require 'spec_helper'

describe 'commenting' do 

	before do 
		Post.create(title: 'Hello world')
	end

		it "can add a comment to a post" do 
			visit '/posts'
			click_link 'Hello world'
			click_link 'Add a comment'

			fill_in 'Name', with: 'Tom'
			fill_in	'Comment', with: 'Nice post'
			click_button 'Create Comment'

			expect(page).to have_content 'Nice post'
		end
	end