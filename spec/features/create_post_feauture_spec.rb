require 'spec_helper'

describe 'creating new post' do

	context 'given a title and post' do 

		it 'should display the new post on the list of posts' do
			visit '/posts/new'
			fill_in 'Title', with: 'Hello World'
			fill_in 'Content', with: 'This is my first post'
			click_button 'Create Post'

			expect(current_path).to eq '/posts' 
			expect(page).to have_content 'Hello World'
		end
	end
end