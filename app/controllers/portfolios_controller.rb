class PortfoliosController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  layout "portfolio"

  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def edit
  end

  def show
  end

  def angular
    @portfolio_items = Portfolio.search_by_subtitle("Angular")
  end

  # POST /portfolios.json
  def create
    @portfolio = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
        format.json { render :show, status: :created, location: @portfolio }
      else
        format.html { render :new }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /portfolios/1
  # PATCH/PUT /portfolios/1.json
  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Porfolio was successfully updated.' }
        format.json { render :show, status: :ok, location: @portfolio }
      else
        format.html { render :edit }
        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @portfolio_item.destroy
    
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @portfolio_item = Portfolio.find(params[:id])
    end

    def portfolio_params
      params.require(:portfolio).permit(:title,:subtitle,:body,:main_image,:thumb_image, technologies_attributes: [:name])
    end
end
