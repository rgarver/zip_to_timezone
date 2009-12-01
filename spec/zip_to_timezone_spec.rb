require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "ZipToTimezone" do
  it "should show that San Diego is Pacific Time" do
    ZipToTimezone.get_timezone_for('92129').should == 'Pacific Time (US & Canada)'
  end
  
  it "should show that DC is Eastern Time" do
    ZipToTimezone.get_timezone_for('20001').should == 'Eastern Time (US & Canada)'
  end
end
