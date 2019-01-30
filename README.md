# ruby-build Chef Cookbook

[![Cookbook Version](https://img.shields.io/cookbook/v/ruby_build.svg)](https://supermarket.chef.io/cookbooks/ruby_build)
[![Build Status](https://img.shields.io/circleci/project/github/sous-chefs/ruby_build/master.svg)](https://circleci.com/gh/sous-chefs/ruby_build)

## Description

Manages the [ruby-build][rb_site] framework and its installed Rubies, through custom resources.

It is for use in standalone mode. If you wish to use ruby-build with rbenv, please use the [rbenv cookbook][rbenv-cookbook].

## Requirements

### Chef

- Chef 13.10+

### Supported Platforms

- Ubuntu 16.04+
- MacOS
- debian 8+
- FreeBSD 9+
- RedHat 6+

### Cookbooks

- Java
  The java cookbook is included to make JRuby install convenient.

## Usage

```ruby
# metadata.rb
require 'ruby_build'
```

```ruby
# default.rb
ruby_build_install ''

ruby_build_definition '2.6.0'
```

## Custom Resources

- [ruby_build_install](documentation/resources/install.md)
- [ruby_build_definition](documentation/resources/definition.md)

## License and Author

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

```text
http://www.apache.org/licenses/LICENSE-2.0
```

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

[rb_site]: https://github.com/rbenv/ruby-build
[rbenv-cookbook]: https://github.com/sous-chefs/ruby_rbenv
[repo]: https://github.com/chef-rbenv/ruby_build
