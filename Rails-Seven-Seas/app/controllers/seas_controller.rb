class SeasController < ApplicationController
  #define your controller actions here

  # get "/" do
  #
  #   erb :welcome
  # end

    def index
      @seas = Sea.all
    end
    #
    # get "/seas" do
    #   @seas = Sea.all
    #   erb :'index.html'
    # end

    def create
      @sea = Sea.new(sea_params)
      @sea.save
      redirect_to @sea
    end
    # post "/seas" do
    #   @sea = Sea.new(params)
    #   @sea.save
    #   redirect to "/seas/#{@sea.id}"
    # end
    #

    def new
      @sea = Sea.new
    end
    #
    # get "/seas/new" do
    #   erb :'new.html'
    # end
    #

    def edit
      @sea = Sea.find(params[:id])
    end
    # get "/seas/:id/edit" do
    #   @sea = Sea.find(params[:id])
    #
    #   erb :'edit.html'
    # end
    #

    def show
      @sea = Sea.find(params[:id])
    end
    # get "/seas/:id" do
    #   @sea = Sea.find(params[:id])
    #   erb :'show.html'
    # end
    #

    def update
      @sea = Sea.find(params[:id])
      @sea.update(sea_params)
      redirect_to @sea
    end
    # patch "/seas/:id" do
    #   @sea = Sea.find(params[:id])
    #   params.delete("_method")
    #   params[:has_mermaids] ||= false
    #   @sea.update(params)
    #   redirect to "/seas/#{@sea.id}"
    # end
    #

    def destroy
      @sea = Sea.find(params[:id])
      @sea.destroy
      redirect_to seas_path
    end
    # delete "/seas/:id" do
    #   @sea = Sea.find(params[:id])
    #   @sea.destroy
    #   redirect to "/seas"
    # end

    private
    # In controller actions, use this private method to access sea params from forms.
    # Example: @sea.update(sea_params)
    # check the return value of sea_params to see what you're working with!
    def sea_params
      params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
    end

end
