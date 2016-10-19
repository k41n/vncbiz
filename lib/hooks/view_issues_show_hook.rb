module RedmineVncbiz
  module Hooks
    class ViewsIssuesHook < Redmine::Hook::ViewListener
      render_on :view_issues_show_description_bottom,
                partial: 'timeline/timeline',
                locals: {
                  issue: @issue
                }
    end
  end
end
