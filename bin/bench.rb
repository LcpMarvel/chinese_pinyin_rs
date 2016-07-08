#!/usr/bin/env ruby

require "bundler/setup"
require "chinese_pinyin_rs"
require "chinese_pinyin"

require "benchmark"

n = 1000000
Benchmark.bm do |x|
  x.report {
    n.times do
      ChinesePinyinRs.t("中国")
    end
  }

  x.report {
    n.times do
      Pinyin.t('中国')
    end
  }
end
