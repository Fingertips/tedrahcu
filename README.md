# Tedrahcu

Tedrahcu is a Ruby wrapper for Uchardet.

```sh
gem install tedrahcu
```

```ruby
require 'tedrahcu'
Tedrahcu.detect('hey') #=> 'ASCII'
```

# Dependencies

```sh
brew install uchardet
yum -y install uchardet-dev
apt install libuchardet-dev
```