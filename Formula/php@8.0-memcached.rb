require_relative "../lib/php_pecl_formula"

class PhpAT80Memcached < PhpPeclFormula
  extension_dsl "Extension for interfacing with memcached via libmemcached library"

  url "https://pecl.php.net/get/memcached-3.1.5.tgz"
  sha256 "b288e45f839593e16c4d8508b241de51a86df4f7322153e6becb9e1c819021fd"
  revision 2
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "d2024ad3c28d9861082a832f909e23254bba3ef4b98af063fc0aa97dbf168fcb"
    sha256 catalina: "10d84331affffb73f5e2d5962687d0a199127a88519b6e5b0277983f3aafeaa1"
    sha256 mojave:   "a4049d1373110e05b2a2249219fb808b2185ac607ae7dfa61cfd8e662b36eadf"
  end

  depends_on "libmemcached"
  depends_on "kabel/pecl/php@8.0-igbinary"
  depends_on "kabel/pecl/php@8.0-msgpack"

  configure_arg %W[
    --enable-memcached-session
    --enable-memcached-igbinary
    --enable-memcached-json
    --enable-memcached-msgpack
    --enable-memcached-sasl
    --with-libmemcached-dir=#{Formula["libmemcached"].opt_prefix}
    --with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr
  ]

  def install
    # fix include location for configure to find
    mkdir_p buildpath/source_dir/"include/php/ext"
    ln_s Formula["kabel/pecl/php@8.0-igbinary"].opt_include/"php/ext/igbinary",
      buildpath/source_dir/"include/php/ext/igbinary"
    ln_s Formula["kabel/pecl/php@8.0-msgpack"].opt_include/"php/ext/msgpack",
      buildpath/source_dir/"include/php/ext/msgpack"
    super
  end
end
