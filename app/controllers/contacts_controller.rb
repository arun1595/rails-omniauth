class ContactsController < ApplicationController
  def index
    @contacts = request.env['omnicontacts.contacts']
    @user = request.env['omnicontacts.user']
  end

  def fetch
    redirect_to '/contacts/gmail'
  end
end
