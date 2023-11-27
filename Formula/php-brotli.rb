require_relative "../lib/php_pecl_formula"

class PhpBrotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.13.1.tar.gz"
  sha256 "1eca1af3208e2f6551064e3f26e771453def588898bfc25858ab1db985363e47"
  revision 3
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "b65e421ba2d5bb5e2fe58661660fbeef79439332b266303a0eef4c4f592a4942"
    sha256 cellar: :any, monterey: "b868f51f7db7b54884e88b7fb8a2740f904c64a42c4534bf025c7bfd554a7232"
    sha256 cellar: :any, big_sur:  "cd55331ff3cfbfc88f8fc70c31e30d3781b76111e86d42130fedb1fb72920d86"
  end

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
