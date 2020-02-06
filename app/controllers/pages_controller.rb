class PagesController < ApplicationController
    load_and_authorize_resource :class => PagesController
    skip_before_action :authenticate_user!, :only => [:index]
  

def index
 end
 def about
 end
 def team
 end
 def faqs
 end
 def faqspractitioners
 end
 def faqsusers
 end
 def login
 end
 def signup
 end
 def search
 end
end

