require_relative "../lib/php_pecl_formula"

class PhpAT83Brotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.16.0.tar.gz"
  sha256 "2ddd7d151974c44b461b1418ee69067ebb4e37183b2217ea7864c74f2d762d51"
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
