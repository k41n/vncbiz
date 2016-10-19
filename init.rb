require 'redmine'

Redmine::Plugin.register :redmine_vncbiz do
  name 'Redmine VNCBiz test task'
  author 'Kodep LLC'
  description <<-T
This is a plugin for displaying issue history as timeline
T
  version '1.0.0'
  url 'http://kodep.ru'
  author_url 'mailto:Andrei.Malyshev@kodep.ru'

  requires_redmine version_or_higher: '3.2.1'

  settings(
    default: {
      fields: []
    },
    partial: 'settings/redmine_vncbiz'
  )
end

ActionDispatch::Callbacks.to_prepare do
  require 'redmine_vncbiz'
end
