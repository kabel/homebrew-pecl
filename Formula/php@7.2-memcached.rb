require_relative "../lib/php_pecl_formula"

class PhpAT72Memcached < PhpPeclFormula
  extension_dsl "Extension for interfacing with memcached via libmemcached library"

  url "https://pecl.php.net/get/memcached-3.1.5.tgz"
  sha256 "b288e45f839593e16c4d8508b241de51a86df4f7322153e6becb9e1c819021fd"
  license "PHP-3.01"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "f3260ec303bc6b3d1e45bb8b645cfa04689a972bbfb61bacd1c6627db3d2dd2e" => :mojave
    sha256 "9b581f6b0a9564092f6878c5ab303ecdc473c5851f479be55285b2383a50dccc" => :high_sierra
  end

  depends_on "libmemcached"

  configure_arg %W[
    --with-libmemcached-dir=#{Formula["libmemcached"].opt_prefix}
    --with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr
  ]
end
