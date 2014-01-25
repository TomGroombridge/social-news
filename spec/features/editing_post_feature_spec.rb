require 'spec_helper'

describe ' editing posts' do 

	before do
		Post.create title: 'first post'
	end

	it ' can change the title of the post' do 
		visit '/posts'
		click_link 'Edit this post'
		fill_in 'Title', with: 'new title'
		click_button 'Update Post'

		expect(page).to have_content 'new title'
	end

	it 'can delete a post' do 
		visit '/posts'
		click_link 'Delete this post'
		expect(page).not_to have_content 'new title'
	end
end