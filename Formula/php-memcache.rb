require_relative "../lib/php_pecl_formula"

class PhpMemcache < PhpPeclFormula
  extension_dsl "memcache extension"

  url "https://pecl.php.net/get/memcache-8.2.tgz"
  sha256 "b3f0640eacdeb9046c6c86a1546d7fb8a4e9f219e5d9a36a287e59b2dd8208e5"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "2079ad16738860605de2a5b203ae24e81786a12ec782a37ba67e7aade208999c"
    sha256 cellar: :any_skip_relocation, monterey: "b1c0be5839695827795ba3f8525ea4236a357e8b47123826b0646a8f63b80524"
    sha256 cellar: :any_skip_relocation, big_sur:  "5322bd8468adaa8d663f0514e00e4ac2508cbc176c04f6478e3267b45d1c6308"
  end

  configure_arg "--with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
end
