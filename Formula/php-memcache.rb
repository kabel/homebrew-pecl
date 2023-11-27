require_relative "../lib/php_pecl_formula"

class PhpMemcache < PhpPeclFormula
  extension_dsl "memcache extension"

  url "https://pecl.php.net/get/memcache-8.2.tgz"
  sha256 "b3f0640eacdeb9046c6c86a1546d7fb8a4e9f219e5d9a36a287e59b2dd8208e5"
  revision 1
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "ac7d2346fe10ff6ebc503fc54eb0199cf8b8146a5c33d88b0b83b5f674e30e9a"
    sha256 cellar: :any_skip_relocation, monterey: "40c5e5e0d13d3519c394a72bfe791616dbfbc2be75cdbcde2097dc6eb5934177"
    sha256 cellar: :any_skip_relocation, big_sur:  "4b490a379e65f6d88d0eedb0f58ddce8ec8752647784c9c80b764e279827f6f7"
  end

  configure_arg "--with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
end
