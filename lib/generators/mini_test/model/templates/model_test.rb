require "test_helper"

<% module_namespacing do -%>
class <%= class_name %>Test < ActiveSupport::TestCase

  def setup
    @<%= file_name %> = <%= class_name %>.new
  end

  def test_valid
    assert @<%= file_name %>.valid?
  end

end
<% end -%>
