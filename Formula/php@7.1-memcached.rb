require_relative "../lib/php_pecl_formula"

class PhpAT71Memcached < PhpPeclFormula
  extension_dsl "Extension for interfacing with memcached via libmemcached library"

  url "https://pecl.php.net/get/memcached-3.1.3.tgz"
  sha256 "20786213ff92cd7ebdb0d0ac10dde1e9580a2f84296618b666654fd76ea307d4"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "24e6cab77eadab5f3e885bdc89438120dd9d37d93208e1013e5b59053af1fda7" => :mojave
    sha256 "b6633001b002990c3f85043edfbc89825a3f8d19f0c7f59bd353bb84eff9fedb" => :high_sierra
  end

  depends_on "libmemcached"

  configure_arg "--with-libmemcached-dir=#{Formula["libmemcached"].opt_prefix}"
end
