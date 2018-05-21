module ApplicationHelper
  def login?
    session['user'].present?
  end
end
