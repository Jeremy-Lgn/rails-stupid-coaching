# test/system/questions_test.rb
require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "label", text: "Ask your coach anything"
  end

  test "saying Hello" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"
    take_screenshot
    assert_text "I don't care, get dressed and go to work!"
  end

  test "saying something ending with ?" do
    visit ask_url
    fill_in "question", with: "Hello?"
    click_on "Ask"
    take_screenshot
    assert_text "Silly question, get dressed and go to work!"
  end

  test "saying I am going to work" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"
    take_screenshot
    assert_text "Great!"
  end
end
