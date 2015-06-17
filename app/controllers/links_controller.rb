  class LinksController < ApplicationController
  before_action :set_link, only: [:show, :edit, :update, :destroy]

  # GET /links
  # GET /links.json
  def index
    @links = Link.all
  end

  # GET /links/1
  # GET /links/1.json
  def show
  end

  # GET /links/new
  def new
    @link = Link.new
    @back = session[:my_previous_url]
  end

  # GET /links/1/edit
  def edit
  end

  # POST /links
  # POST /links.json
  def create
    @link = Link.new(link_params)
      if @link.save
        flash[:success] = "Link to Doc Created"
        redirect_to current_user
      else
        flash[:warning] = "Something went wrong try again."
        redirect_to 'new'
      end
  end
  

  # PATCH/PUT /links/1
  # PATCH/PUT /links/1.json
  def update
   if @link.update(link_params)
    flash[:success] = "Link to Doc Deleted"
    redirect_to current_user
    else
    flash[:warning] = "Something went wrong try again."
    redirect_to 'new'
  end
end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @link.destroy
    flash[:success] = "Link to Doc Deleted"
    redirect_to current_user
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link
      @link = Link.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def link_params
      params.require(:link).permit(:link, :name)
    end




end
