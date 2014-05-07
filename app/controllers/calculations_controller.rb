class CalculationsController < ApplicationController
  def home
  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end

  def pmt

    @interest_rate = params[:interest_rate].to_f/12/100
    @num_of_payments = params[:number_of_payments].to_f
    @present_value = params[:present_value].to_f

    @payment = ((@interest_rate*@present_value)/(1-((1+@interest_rate)**(-@num_of_payments))))

  end



  def square
    @the_number = params[:number].to_f
    @answer = (@the_number)**2

  end

end
