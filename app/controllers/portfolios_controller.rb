class PortfoliosController < ApplicationController

  def index
    @portfolios = Portfolio.all
  end

  def show
    @portfolio = Portfolio.find_by_id(params[:id])
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new
    @portfolio.picture1 = params[:picture1]
    @portfolio.picture2 = params[:picture2]
    @portfolio.caption = params[:caption]
    @portfolio.favorite = params[:favorite]
    
    if @portfolio.save
      redirect_to portfolios_url
    else
      render 'new'
    end
  end

  def edit
    @portfolio = Portfolio.find_by_id(params[:id])
  end

  def update
    @portfolio = Portfolio.find_by_id(params[:id])
    @portfolio.picture1 = params[:picture1]
    @portfolio.picture2 = params[:picture2]
    @portfolio.caption = params[:caption]
    @portfolio.favorite = params[:favorite]
    
    if @portfolio.save
      redirect_to portfolios_url
    else
      render 'new'
    end
  end

  def destroy
    @portfolio = Portfolio.find_by_id(params[:id])
    @portfolio.destroy
    redirect_to portfolios_url
  end
end
