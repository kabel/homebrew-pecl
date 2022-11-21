require_relative "../lib/php_pecl_formula"

class PhpMemcached < PhpPeclFormula
  extension_dsl "Extension for interfacing with memcached via libmemcached library"

  url "https://pecl.php.net/get/memcached-3.2.0.tgz"
  sha256 "2a41143a7b29f4a962a3805b77aa207a99e4566e2d314ce98a051cd24d6e9636"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, ventura:  "ab9beded86f853c02526b623a04c8b5f6babebd8a8b8d2a74040412dee009ba6"
    sha256 cellar: :any, monterey: "e879e97e535ff7caf7b5d31e2c1227c34e8a75e71747fe0e91c250b9aea1f060"
    sha256 cellar: :any, big_sur:  "113467d2939090ba8f39215bddf97b34bf956213eca79d40873f7faa67cf387c"
  end

  depends_on "libmemcached"
  depends_on "kabel/pecl/php-igbinary"
  depends_on "kabel/pecl/php-msgpack"

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
    ln_s Formula["kabel/pecl/php-igbinary"].opt_include/"php/ext/igbinary",
      buildpath/source_dir/"include/php/ext/igbinary"
    ln_s Formula["kabel/pecl/php-msgpack"].opt_include/"php/ext/msgpack",
      buildpath/source_dir/"include/php/ext/msgpack"
    super
  end
end
