require_relative "../lib/php_pecl_formula"

class PhpAT73Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.3.tgz"
  sha256 "37789161e164cd52239a30c9a238da61fec5c8395cdac385b6ed8f0c50fd92f0"
  revision 2
  license "PHP-3.01"

  depends_on "lz4"
  depends_on "kabel/pecl/php@7.3-igbinary"
  depends_on "kabel/pecl/php@7.3-msgpack"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "8b9e3b59d99935b3d97e442b1c2967a41ec348ac4c4e76ac06957f8a6da21c60"
    sha256 catalina: "289c0dd0f5cdf1c846cd1435ea0e322b1fd9f0e673027acbd4630f87c0e850f7"
    sha256 mojave:   "5f003b234f673f2ad0cdb85fdf2c660098fd29440979fb79724aef7f6e927a19"
  end

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
    ln_s Formula["kabel/pecl/php@7.3-igbinary"].opt_include/"php/ext/igbinary",
      buildpath/source_dir/"include/php/ext/igbinary"
    ln_s Formula["kabel/pecl/php@7.3-msgpack"].opt_include/"php/ext/msgpack",
      buildpath/source_dir/"include/php/ext/msgpack"
    super
  end
end
