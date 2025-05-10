require_relative "../lib/php_pecl_formula"

class PhpAT81Brotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.16.0.tar.gz"
  sha256 "2ddd7d151974c44b461b1418ee69067ebb4e37183b2217ea7864c74f2d762d51"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "4a9862b38b0934657a56e44a9d46406a65c111cc6577f44e655a417c8d9e4803"
    sha256 cellar: :any, ventura: "fafc4ba95383dba4d4df23b30a373df6e659138d671ce2751f0e4494d3bd7eab"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
