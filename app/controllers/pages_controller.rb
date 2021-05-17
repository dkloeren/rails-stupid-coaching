class PagesController < ApplicationController
  def question
    params
  end

  def answer
    if params["question"].present?
      if params["question"].downcase == "i am going to work"
        @answer = "Hi!"
      elsif params["question"].end_with?("?")
        @answer = "Silly question, get dressed and go to work!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    else
      @answer = "What is your question?"
    end
  end
end
