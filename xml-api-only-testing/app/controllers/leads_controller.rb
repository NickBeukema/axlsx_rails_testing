class LeadsController < ApplicationController
  include ActionController::MimeResponds

  def index
    @leads = Lead.all

    respond_to do |format|
      format.json {
        render json: @leads.as_json
      }

      format.xlsx {
        render xlsx: 'lead_list', template: 'leads/index'
      }
    end
  end
end
