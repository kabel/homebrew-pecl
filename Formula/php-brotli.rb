require_relative "../lib/php_pecl_formula"

class PhpBrotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.16.0.tar.gz"
  sha256 "2ddd7d151974c44b461b1418ee69067ebb4e37183b2217ea7864c74f2d762d51"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "7e0b4ec6e95fffc2aa1be7ece99877bc765a5f22abaf9be8c6f382d34ccba1fd"
    sha256 cellar: :any, ventura: "2ea6c3489e4bad81c22520011579f1b8fda541987e8f24e66d3e7295b5c16d43"
  end

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
