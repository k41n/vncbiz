class IssueHistoriesController < ApplicationController
  include IssuesHelper
  helper :issues

  include JournalsHelper
  helper :journals

  include CustomFieldsHelper
  helper :custom_fields

  def show
    @issue = Issue.find(params[:id])
    @journals = @issue.journals.includes(:user, :details)
                      .references(:user, :details)
                      .reorder(:created_on, :id).to_a
    render layout: nil
  end
end
