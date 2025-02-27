require_relative "../lib/php_pecl_formula"

class PhpAT83Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-6.1.0.tgz"
  sha256 "f10405f639fe415e9ed4ec99538e72c90694d8dbd62868edcfcd6a453466b48c"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "6017e9c0d45936e0e07adbd7c923323c1cd0d94daeba1ffd23d9a9768b6e4492"
    sha256 cellar: :any, ventura: "f7b92fecc791c457eacc778be11f66028fa281a29f9f492405c180973f680e2f"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "lz4"
  depends_on "zstd"
  depends_on "kabel/pecl/php@8.3-igbinary"
  depends_on "kabel/pecl/php@8.3-msgpack"

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
    ln_s Formula["kabel/pecl/php@8.3-igbinary"].opt_include/"php/ext/igbinary",
      buildpath/source_dir/"include/php/ext/igbinary"
    ln_s Formula["kabel/pecl/php@8.3-msgpack"].opt_include/"php/ext/msgpack",
      buildpath/source_dir/"include/php/ext/msgpack"
    super
  end
end
