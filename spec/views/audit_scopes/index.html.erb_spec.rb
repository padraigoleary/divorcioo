require 'rails_helper'

RSpec.describe "audit_scopes/index", type: :view do
  before(:each) do
    assign(:audit_scopes, [
      AuditScope.create!(
        :name => "Name",
        :status => 1,
        :sequence => 2
      ),
      AuditScope.create!(
        :name => "Name",
        :status => 1,
        :sequence => 2
      )
    ])
  end

  it "renders a list of audit_scopes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
