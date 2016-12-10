RailsAdmin.config do |config|

  config.main_app_name = ['SANTIAS', '( медичний кабінет )']
  config.current_user_method(&:current_user)
  config.authorize_with :cancan

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
