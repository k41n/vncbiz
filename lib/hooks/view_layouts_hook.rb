module RedmineVncbiz
  module Hooks
    class ViewsLayoutsHook < Redmine::Hook::ViewListener
      def view_layouts_base_html_head(_ = {})
        stylesheet_link_tag(:redmine_vncbiz, plugin: 'redmine_vncbiz') +
          stylesheet_link_tag(:timelify, plugin: 'redmine_vncbiz') +
          stylesheet_link_tag(:animate, plugin: 'redmine_vncbiz') +
          javascript_include_tag(:redmine_vncbiz, plugin: 'redmine_vncbiz') +
          javascript_include_tag('jquery.timelify', plugin: 'redmine_vncbiz') +
          javascript_include_tag('https://use.fontawesome.com/6346b1bf09.js')
      end
    end
  end
end
