class HomeController < ApplicationController

  helper_method :current_user

  def index

    if current_user
      contacts = Contact.all!(current_user.oauth_token, current_user.email)

      @sorted_contacts = contacts.sort_by { |k| k[:name] }

      @paginated_contacts = @sorted_contacts.paginate(:page => params[:page], :per_page => 30)
    end

  end
end
