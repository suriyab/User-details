class SamplesController < ApplicationController
  def index
    @samples= Samples.all
  end

  def show
    @samples=Samples.find(params[:id])
  end
  
 def new
    @samples= Samples.new
  end
  
  def create
    @samples= Samples.new(params[:samples])
    if @samples.save
       flash[:notice] ="User Successfully added!"
    redirect_to :action=>'new'
    
  else
    render 'new'
  end
  end

  def edit
    @samples=Samples.find(params[:id])
  end
  
  def update
    @samples=Samples.find(params[:id])
    if @samples.update_attributes(params[:samples])
      redirect_to :action=>'show',:id=>@samples
    else
      render 'edit'
    end
  end
  
  def destroy
    @samples=Samples.find(params[:id])
    @samples.destroy
      redirect_to samples_url
    
   
  end
  
  
  
  
end
