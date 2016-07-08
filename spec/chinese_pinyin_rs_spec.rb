require 'spec_helper'

describe ChinesePinyinRs do
  it "has a version number" do
    expect(ChinesePinyinRs::VERSION).not_to be nil
  end

  it "turns chinese to pinyin" do
    expect(ChinesePinyinRs.translate("中国", " ", false, false, false)).to eq "zhong guo"
  end
end
