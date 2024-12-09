require_relative "../lib/php_pecl_formula"

class PhpAT83Memcache < PhpPeclFormula
  extension_dsl "memcache extension"

  url "https://pecl.php.net/get/memcache-8.2.tgz"
  sha256 "b3f0640eacdeb9046c6c86a1546d7fb8a4e9f219e5d9a36a287e59b2dd8208e5"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "3d6ce53484163cf7e99972518f2bf315be0d888a14d06dab94589031ca9ad63c"
    sha256 cellar: :any_skip_relocation, ventura: "18dfc82509d3bd0fdf96fa6361a0f4bf5b8fffce8db4eb637bcb7120491f75bd"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  on_macos do
    configure_arg "--with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
  end
end
