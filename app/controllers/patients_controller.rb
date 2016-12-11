class PatientsController < ApplicationController
  load_and_authorize_resource

  def show
    render pdf: 'index',
           layout: 'pdf.html.haml',
           encoding: 'UTF-8',
           page_height: '12in',
           page_width: '12in'
           # show_as_html: true
  end
end
