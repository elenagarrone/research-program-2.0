class ContactUsController < ApplicationController
    def new
        @contact = Contact.new
    end

    def create
        @contact = Contact.new(contacts_params)
        @contact.request = request
        if @contact.deliver
            flash[:notice] = 'Thank you for your message. We will contact you soon!'
            redirect_to root_path
        else
            flash[:error] = 'Cannot send message.'
            render :new
        end
    end


    def contacts_params
        params.require(:contact).permit(:email, :subject, :message)
    end
end
