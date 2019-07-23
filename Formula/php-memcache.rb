require File.expand_path("../lib/php_pecl_formula", __dir__)

class PhpMemcache < PhpPeclFormula
  extension_dsl "memcache extension"

  url "https://github.com/websupport-sk/pecl-memcache/archive/4.0.4.tar.gz"
  sha256 "022607027e31f63c8bf7958a334743ca7c2a1058b3b5fe6e0aea67926954facf"

  configure_arg "--with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
end
