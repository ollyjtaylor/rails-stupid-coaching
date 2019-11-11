# frozen_string_literal: true

# class for questionscontroller.
class QuestionsController < ApplicationController
  def ask
    @input = params[:input]
  end

  def answer
    @input = params[:question]
    if @input.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    elsif @input.include? 'I am going to work right now!'
      @answer = ''
    else
      @anser = 'OK!'
    end
  end
end
