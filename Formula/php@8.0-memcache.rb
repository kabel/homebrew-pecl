require_relative "../lib/php_pecl_formula"

class PhpAT80Memcache < PhpPeclFormula
  extension_dsl "memcache extension"

  url "https://pecl.php.net/get/memcache-8.2.tgz"
  sha256 "b3f0640eacdeb9046c6c86a1546d7fb8a4e9f219e5d9a36a287e59b2dd8208e5"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "67f3238e180f700a92a91dfd38d09b02fca7a0f8722fd957050c15be317c51ef"
    sha256 cellar: :any_skip_relocation, monterey: "22b8ba91e30b4fbe0d4c1f2d4fc7b4a9b4183222ef9ce0cad047f175877cb7e0"
    sha256 cellar: :any_skip_relocation, big_sur:  "6c76aed6f289daa68f6a748e2dcffd0130dca5eac87ecbf9dfb9b5c4bef84441"
  end

  deprecate! date: "2023-11-26", because: :unsupported

  on_macos do
    configure_arg "--with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
  end
end
