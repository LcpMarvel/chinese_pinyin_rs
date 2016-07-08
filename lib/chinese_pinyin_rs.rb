require "ffi"
require "chinese_pinyin_rs/version"

module ChinesePinyinRs
  extend FFI::Library

  dir = File.expand_path("../target/release/", File.dirname(__FILE__))

  ffi_lib "#{dir}/libchinese_pinyin_rs.#{FFI::Platform::LIBSUFFIX}"

  attach_function :translate, [:string, :string, :bool, :bool, :bool], :string

  def self.t(characters, options = {})
    splitter = options[:splitter] || " "
    tonemarks = options[:tonemarks] || false
    tone = options[:tone] || false
    camel = options[:camel] || false

    translate(characters, splitter, tonemarks, tone, camel)
  end
end
