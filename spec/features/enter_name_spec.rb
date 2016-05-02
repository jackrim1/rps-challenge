feature 'Enter name' do
	scenario 'submit a name' do
		sign_in
		expect(page).to have_content 'Bob vs. Computer'
	end

	scenario 'take your pic' do
		sign_in
		expect(page).to have_content 'Take your pick ...'
	end

	scenario 'has buttons for rock, paper, scissors' do
		sign_in
		expect(page).to have_button("rock")
		expect(page).to have_button("paper")
		expect(page).to have_button("scissors")
	end

end
