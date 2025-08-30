require_relative "../lib/php_pecl_formula"

class PhpBrotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.18.2.tar.gz"
  sha256 "d79ff26c24859485166a805e4340cdebdaad6246d93e9c5eeb90ae681bc801a6"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "c4223c982b3f8b03678c6529f6008503b0b01e02c654947d470bdade27509dba"
    sha256 cellar: :any, ventura: "815421428b0fc4ca769bb4bf5471fc7fb3ad83bc834731d9674a33d706e24c49"
  end

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
