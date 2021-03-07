require_relative "../lib/php_pecl_formula"

class PhpAT73Memcached < PhpPeclFormula
  extension_dsl "Extension for interfacing with memcached via libmemcached library"

  url "https://pecl.php.net/get/memcached-3.1.5.tgz"
  sha256 "b288e45f839593e16c4d8508b241de51a86df4f7322153e6becb9e1c819021fd"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "a43c178ecaef0c07f775b7d50bff5c8b36addb370ac8a29b8041013b1f67565a"
    sha256 catalina: "13979bb2713d1e668a15352eb47a22f1a36115eac736a6047ca4bd1b81dfc64e"
    sha256 mojave:   "764e9c3064fb161978d3cfcfb70f02fd48f48975314f0dec90add46d462d3179"
  end

  depends_on "libmemcached"
  depends_on "kabel/pecl/php@7.3-igbinary"
  depends_on "kabel/pecl/php@7.3-msgpack"

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
    ln_s Formula["kabel/pecl/php@7.3-igbinary"].opt_include/"php/ext/igbinary",
      buildpath/source_dir/"include/php/ext/igbinary"
    ln_s Formula["kabel/pecl/php@7.3-msgpack"].opt_include/"php/ext/msgpack",
      buildpath/source_dir/"include/php/ext/msgpack"
    super
  end
end
