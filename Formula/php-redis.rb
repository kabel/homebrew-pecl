require_relative "../lib/php_pecl_formula"

class PhpRedis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-6.0.2.tgz"
  sha256 "01aeccb0e14f897fe56f0509be6e6991ff0ad459f9d34e95e4556d02699b9a03"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "b5ea0d9b7f4ed9e4d32b49a8b123dbd577e92b8200381f99d38c0ec58e4c209a"
    sha256 cellar: :any, ventura:  "f6f6681d55929f0cee93db4880e4a2891a5f889e4ee2a31c246e3a437ee528f4"
    sha256 cellar: :any, monterey: "b9d6c18be9a4121868fb16b679bde94a197eddda795436de94c71953e2f63b49"
  end

  depends_on "lz4"
  depends_on "kabel/pecl/php-igbinary"
  depends_on "kabel/pecl/php-msgpack"

  configure_arg %W[
    --enable-redis-igbinary
    --enable-redis-lz4
    --enable-redis-lzf
    --enable-redis-msgpack
    --enable-redis-zstd
    --with-liblz4=#{Formula["lz4"].opt_prefix}
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
