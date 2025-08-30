require_relative "../lib/php_pecl_formula"

class PhpAT83Brotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.18.2.tar.gz"
  sha256 "d79ff26c24859485166a805e4340cdebdaad6246d93e9c5eeb90ae681bc801a6"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "4c3c0c6a15739de1ba1e216400c5d16f2ee70ed2d91c184e042a67da29007c2b"
    sha256 cellar: :any, ventura: "fbf5138c9e7b551de1c7f83792e41eeea18211526eadc495ee7758ed1e98ab71"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
