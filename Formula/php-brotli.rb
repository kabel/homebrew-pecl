require_relative "../lib/php_pecl_formula"

class PhpBrotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.15.2.tar.gz"
  sha256 "b5e41174652993d516f14243873d217f46dd2d241252f12ccf899cbdbbfa693e"
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
