class StocksController < ApplicationController
  def search
    if params[:stock]
      @stock = Stock.where(ticker: params[:stock])
      @stock = Stock.new_form_lookup(params[:stock])
    end
    if @stock
      # render json: @stock
      render partial: 'lookup'
    else
      render status: :not_found, body: nil
    end
  end
end
