class PagesController < ApplicationController
 
  def home
    @title = "Home"
    if signed_in?
       @micropost = Micropost.new if signed_in?
       @feed_items = current_user.feed.paginate(:page => params[:page])   
    end
end

  def grievances
    @title = "Grievances"
  end

  def bylaws
    @title = "Bylaws"
  end

  def books
    @title = "Books"
  end

 def donate
   @title = "Donate"
 end

 def donors
   @title = "Donors"
 end


end
  
