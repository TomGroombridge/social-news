require 'spec_helper'

describe 'commenting' do 

	before do 
		Post.create(title: 'Hello world')
	end

		it "can add a comment to a post" do 
			visit '/users/sign_up'
			fill_in "user[email]", with: "a@a.com"
			fill_in "user[password]", with: "12345678"
			fill_in "user[password_confirmation]", with: "12345678"
			click_button 'Sign up'
			visit '/posts'
			click_link 'Hello world'
			click_link 'Add a comment'

			
			fill_in	'Comment', with: 'Nice post'
			click_button 'Create Comment'

			expect(page).to have_content 'Nice post'
		end
	end