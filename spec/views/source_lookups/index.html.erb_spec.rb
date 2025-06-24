require 'rails_helper'

RSpec.describe "source_lookups/index", type: :view do
  before(:each) do
    assign(:source_lookups, [
      SourceLookup.create!(
        SOURCE_SYSTEM: "Source System",
        BANNER_NAME: "Banner Name",
        SOURCE_TABLES: "Source Tables"
      ),
      SourceLookup.create!(
        SOURCE_SYSTEM: "Source System",
        BANNER_NAME: "Banner Name",
        SOURCE_TABLES: "Source Tables"
      )
    ])
  end

  it "renders a list of source_lookups" do
    render
    assert_select "tr>td", text: "Source System".to_s, count: 2
    assert_select "tr>td", text: "Banner Name".to_s, count: 2
    assert_select "tr>td", text: "Source Tables".to_s, count: 2
  end
end
