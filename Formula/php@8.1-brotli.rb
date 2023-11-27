require_relative "../lib/php_pecl_formula"

class PhpAT81Brotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.13.1.tar.gz"
  sha256 "1eca1af3208e2f6551064e3f26e771453def588898bfc25858ab1db985363e47"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "c050d1727919863e65458c7787946cfc900cfcfb8adb15fca6b9d72af740d13d"
    sha256 cellar: :any, monterey: "d1129d9638ba1e47f04d73b3841b27145e9d0a5536f34fd5bba473afb4c794a8"
    sha256 cellar: :any, big_sur:  "1f97f6691addd814128488500e5762355a55524122509295e11025cf77a38447"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
