require_relative "../lib/php_pecl_formula"

class PhpMemcached < PhpPeclFormula
  extension_dsl "Extension for interfacing with memcached via libmemcached library"

  url "https://pecl.php.net/get/memcached-3.1.5.tgz"
  sha256 "b288e45f839593e16c4d8508b241de51a86df4f7322153e6becb9e1c819021fd"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 "edf98c3c309e5184befd2e47e179ca66da3caa2b62f08bd393f7eed8b120e93d" => :catalina
    sha256 "d70a7c1cee5e43f28b4c5d7f34901d60d5bf668a8f06c97c07feef9abd9a5cbf" => :mojave
  end

  depends_on "libmemcached"

  configure_arg %W[
    --with-libmemcached-dir=#{Formula["libmemcached"].opt_prefix}
    --with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr
  ]
end
