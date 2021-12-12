ActiveAdmin.register_page 'Dashboard' do
  menu priority: 1, label: proc { I18n.t('active_admin.dashboard') }

  content title: proc { I18n.t('active_admin.dashboard') } do
    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel 'Recent News' do
          ul do
            Noticium.all.limit(5).map do |post|
              li link_to(post.title, '/noticia/' + post.id.to_s)
            end
          end
        end
      end

      column do
        panel 'Info' do
          para 'Welcome to ActiveAdmin.'
        end
      end
    end
  end # content
end
