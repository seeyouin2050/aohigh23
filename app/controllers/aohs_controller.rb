class AohsController < ApplicationController
  def index
  if params[:tag]
            @aohs = Aoh.tagged_with(params[:tag])
      else
  	@aohs = Aoh.order(created_at: :desc)
  	end
  	@aoh = Aoh.new
  end

  def newaoh
  end
  
	def alltags
    @tags = Aoh.tag_counts_on(:tag) 
  	  	@aoh = Aoh.new
  	 	end 
  	 	  
  def create
  	@aoh = Aoh.new(aoh_params)
  	respond_to do |format|
  	if @aoh.save
  	format.html{redirect_to root_path, notice: 'keep aohigh untill they hear you'}
  	else
  	format.html {render :newpost}
  			end
  		end
	end
		private
		#use callbacks to share common setup and constraints between actions
		def set_aoh
		@aoh = Aoh.find(params[:id])
		end
	# Never trust Parameters from bitch ass internet 
	
		def aoh_params
			params.require(:aoh).permit(:status, :tag_list)
		end
	
end