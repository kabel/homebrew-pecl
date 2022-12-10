require_relative "../lib/php_pecl_formula"

class PhpAT81Memcache < PhpPeclFormula
  extension_dsl "memcache extension"

  url "https://pecl.php.net/get/memcache-8.0.tgz"
  sha256 "defe33e6f7831d82b7283b95e14a531070531acbf21278f3f0d7050505cf3395"
  license "PHP-3.0"

  configure_arg "--with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
end
