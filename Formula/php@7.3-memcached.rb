require_relative "../lib/php_pecl_formula"

class PhpAT73Memcached < PhpPeclFormula
  extension_dsl "Extension for interfacing with memcached via libmemcached library"

  url "https://pecl.php.net/get/memcached-3.1.5.tgz"
  sha256 "b288e45f839593e16c4d8508b241de51a86df4f7322153e6becb9e1c819021fd"
  license "PHP-3.01"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "7586e9bd393e47723af58e75a6da478e26be5dc75d4220ffd4bc008177f58bf6" => :mojave
    sha256 "3d8971293dc94819c2482423d6ecab7cfd234f45d18fad6a30a2777d9ae72710" => :high_sierra
  end

  depends_on "libmemcached"

  configure_arg %W[
    --with-libmemcached-dir=#{Formula["libmemcached"].opt_prefix}
    --with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr
  ]
end
