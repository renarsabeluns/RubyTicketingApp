# frozen_string_literal: true

class HomeController < ApplicationController
  def index 
    if user_signed_in?
      redirect_to task_path
    end
  end

  def about
  end
end
