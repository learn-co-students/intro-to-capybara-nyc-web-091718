require 'spec_helper'

describe "GET '/' - Greeting Form" do
  # Code from previous example
  it 'welcomes the user' do
    visit '/'
    expect(page.body).to include("Welcome!")
  end

  # New test
  # we tell Capybara to visit the page at '/'. Once that is done, we set some expectations against the page object that represent the user looking at the page in their browser. We can simply assert that the page has an HTML selector for form, meaning that the page contains an HTML element that matches the form tag.
  it 'has a greeting form with a user_name field' do
    visit '/'

    expect(page).to have_selector("form")
    expect(page).to have_field(:user_name)
  end
end

# This new test is trying to mimic what a user should see when they visit the greeting form, fill in the name 'Avi', and click the 'Submit' button. Because of the amazing RSpec DSL mixed in with Capybara, our test is able to clearly and simply describe that behavior.

describe "POST '/greet' - User Greeting" do
  it 'greets the user personally based on their user_name in the form' do
    visit '/'

    fill_in(:user_name, :with => "Avi")
    click_button "Submit"

    expect(page).to have_text("Hi Avi, nice to meet you!")
  end
end
