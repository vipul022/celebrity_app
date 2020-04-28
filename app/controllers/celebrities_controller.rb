class CelebritiesController < ApplicationController
    #  def index
    #   @celebrities = Celebrity.all.order(:id)
    # #  p @celebrities
    # end


    # #Show a single celebrity
    # def show
    #    id = params[:id].to_i
    #     @celebrity =  Celebrity.find(id)
    #     # p @celebrity.name

    # end

    # #Create a new celebrity
    # def create
    #   #  puts params["name"]
    #   @celebrity = Celebrity.create(
    #     name: params[:name],
    #     notability: params[:notability],
   
    #   )
    #   redirect_to celebrity_path(@celebrity.id)
    # end

    # def edit
    # @celebrity = show
    # # p @celebrity
    # end

    # #Update a celebrity
    # def update
    
    #       @celebrity = Celebrity.find(params[:id])
    #       p @celebrity
    #       @celebrity.update(
    #       name: params[:celebrity][:name],
    #       notability: params[:celebrity][:notability],
    #       profile_picture: params[:celebrity][:profile_picture]
    #     )
    #     redirect_to celebrity_path(@celebrity.id)



    # end

    # def new

    # end
    # #Remove a celebrity
    # def destroy
    #     @celebrity = Celebrity.find(params[:id])
    #     @celebrity.destroy
    #     redirect_to celebrities_path
    # end
    before_action :set_celebrity, only: [:show, :edit, :update, :destroy]
    
    def index
      @celebrities = Celebrity.all.order(:id)

    end

    def create
       @celebrity = Celebrity.create(celebrity_params)
    
        if @celebrity.errors.any?
          render "new"
        else  
          redirect_to celebrities_path
        end
    end

    def new
        @celebrity = Celebrity.new
    end

    def show
    
    end

    def edit

    end

    def update 
        @celebrity.update(
        name: params[:celebrity][:name],
        notability: params[:celebrity][:notability],
        profile_picture: params[:celebrity][:profile_picture]
    )
        redirect_to celebrity_path(@celebrity.id)


    end

    def destroy
       @celebrity.destroy
       redirect_to celebrities_path

    end

    private

    def set_celebrity
      id = params[:id]
      @celebrity = Celebrity.find(id)
    end

    def celebrity_params
        params.require(:celebrity).permit(:name, :notability, :profile_picture)
    end

end

