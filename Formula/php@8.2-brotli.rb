require_relative "../lib/php_pecl_formula"

class PhpAT82Brotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.16.0.tar.gz"
  sha256 "2ddd7d151974c44b461b1418ee69067ebb4e37183b2217ea7864c74f2d762d51"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "8361cfe40c550113b0d653bc4f953f3ec38d4e8caa84e9b61943f9098eaa779c"
    sha256 cellar: :any, ventura: "39b7c396d7a1292c0fc9526f013b3780b2872de49b2ac51a07e691aa3349be18"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
