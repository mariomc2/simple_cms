class DemoController < ApplicationController

  layout 'application'
  
  def index
    #render(:template => 'demo/hello') #name of the template 'hello'
  end

  def hello
  	#render('index')
  	@array = [1,2,3,4,5]
  	@id = params['id']
  	@page = params[:page].to_i
  end

  def other_hello
  	redirect_to(:controller => 'demo', :action => 'index')
  end

  def tect_helpers
  end

  def escape_output
  end

end
