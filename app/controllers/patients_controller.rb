class PatientsController < ApplicationController
  load_and_authorize_resource

  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'index', layout: 'pdf.html.haml', encoding: 'UTF-8', page_height: '12in', page_width: '12in'
      end
    end
  end
end
