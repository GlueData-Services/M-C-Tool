require 'rails_helper'

RSpec.describe "source_lookups/new", type: :view do
  before(:each) do
    assign(:source_lookup, SourceLookup.new(
      SOURCE_SYSTEM: "MyString",
      BANNER_NAME: "MyString",
      SOURCE_TABLES: "MyString"
    ))
  end

  it "renders new source_lookup form" do
    render

    assert_select "form[action=?][method=?]", source_lookups_path, "post" do

      assert_select "input[name=?]", "source_lookup[SOURCE_SYSTEM]"

      assert_select "input[name=?]", "source_lookup[BANNER_NAME]"

      assert_select "input[name=?]", "source_lookup[SOURCE_TABLES]"
    end
  end
end
