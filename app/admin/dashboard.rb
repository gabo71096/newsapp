ActiveAdmin.register_page 'Dashboard' do
  menu priority: 1, label: proc { I18n.t('active_admin.dashboard') }

  content title: proc { I18n.t('active_admin.dashboard') } do
    # Added 5 recents post to dashboard.
    columns do
      column do
        panel 'Recent News' do
          ul do
            Noticium.all.order('created_at DESC').limit(5).map do |post|
              li link_to(post.title, '/noticia/' + post.id.to_s)
            end
          end
        end
      end

      column do
        panel 'Info' do
          para 'Welcome to ActiveAdmin.'
          para 'You can navigate through all recent news, and perform CRUD operations in Noticia tab up in the navbar.'
        end
      end
    end
  end # content
end
