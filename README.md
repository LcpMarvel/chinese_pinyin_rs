# ChinesePinyinRs

代码逻辑参照 [chinese_pinyin](https://github.com/flyerhzm/chinese_pinyin) , 使用 `Rust` 实现,


```
       user     system      total        real
  12.000000   0.080000  12.080000 ( 12.125784)
  29.320000   0.100000  29.420000 ( 29.536190)
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chinese_pinyin_rs'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chinese_pinyin_rs

## Usage

```ruby
ChinesePinyinRs.t('中国')  => "zhong guo"
ChinesePinyinRs.t('你好world') => "ni hao world"
ChinesePinyinRs.t('中国', splitter: '-') => "zhong-guo"
ChinesePinyinRs.t('中国', splitter: '') => "zhongguo"
ChinesePinyinRs.t('中国', tone: true) => "zhong1 guo2"
ChinesePinyinRs.t('中国', tonemarks: true) => "zhōng guó"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/chinese_pinyin_rs. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

