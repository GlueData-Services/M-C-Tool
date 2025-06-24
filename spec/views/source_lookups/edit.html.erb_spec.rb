require 'rails_helper'

RSpec.describe "source_lookups/edit", type: :view do
  before(:each) do
    @source_lookup = assign(:source_lookup, SourceLookup.create!(
      SOURCE_SYSTEM: "MyString",
      BANNER_NAME: "MyString",
      SOURCE_TABLES: "MyString"
    ))
  end

  it "renders the edit source_lookup form" do
    render

    assert_select "form[action=?][method=?]", source_lookup_path(@source_lookup), "post" do

      assert_select "input[name=?]", "source_lookup[SOURCE_SYSTEM]"

      assert_select "input[name=?]", "source_lookup[BANNER_NAME]"

      assert_select "input[name=?]", "source_lookup[SOURCE_TABLES]"
    end
  end
end
