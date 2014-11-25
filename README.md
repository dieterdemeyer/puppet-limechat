# LimeChat Puppet Module for Boxen

Install [LimeChat](http://limechat.net/mac/), an IRC client for Mac OS X.

## Usage

```puppet
include limechat
```

You can specify a version:

``` puppet
class { 'limechat': version => '3.00' }
```

...or in Hiera...

``` yaml
limechat::version: '3.00'
```

## Required Puppet Modules

* `boxen`

## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
