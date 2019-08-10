require_relative "../lib/php_pecl_formula"

class PhpAT72Memcached < PhpPeclFormula
  extension_dsl "Extension for interfacing with memcached via libmemcached library"

  url "https://pecl.php.net/get/memcached-3.1.3.tgz"
  sha256 "20786213ff92cd7ebdb0d0ac10dde1e9580a2f84296618b666654fd76ea307d4"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "d678259626a3eaef085b1f8f1d22bdca126da5a4936a3240aeff4866c819c49c" => :mojave
    sha256 "5d20321b2f178b41573caf549302092731d3c733980e3faa73adddc963d57ab0" => :high_sierra
  end

  depends_on "libmemcached"

  configure_arg "--with-libmemcached-dir=#{Formula["libmemcached"].opt_prefix}"
end
