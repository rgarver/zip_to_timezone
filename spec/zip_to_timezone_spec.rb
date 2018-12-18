require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "expect(ZipToTimezone" do
  it "should show that San Diego is Pacific Time" do
    expect(ZipToTimezone.get_timezone_for('92129')).to eql('Pacific Time (US & Canada)')
  end

  it "should show that DC is Eastern Time" do
    expect(ZipToTimezone.get_timezone_for('20001')).to eql('Eastern Time (US & Canada)')
  end

  it "should know that some of MI is in Central time" do
    expect(ZipToTimezone.get_timezone_for('49915')).to eql('Central Time (US & Canada)')
    expect(ZipToTimezone.get_timezone_for('49914')).to eql('Eastern Time (US & Canada)')
  end

  it "should know that Roswell NM is in Mountain time" do
    expect(ZipToTimezone.get_timezone_for('88201')).to eql('Mountain Time (US & Canada)')
    expect(ZipToTimezone.get_timezone_for('88203')).to eql('Mountain Time (US & Canada)')
  end
end
