require 'rails_helper'

RSpec.describe "source_lookups/show", type: :view do
  before(:each) do
    @source_lookup = assign(:source_lookup, SourceLookup.create!(
      SOURCE_SYSTEM: "Source System",
      BANNER_NAME: "Banner Name",
      SOURCE_TABLES: "Source Tables"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Source System/)
    expect(rendered).to match(/Banner Name/)
    expect(rendered).to match(/Source Tables/)
  end
end
