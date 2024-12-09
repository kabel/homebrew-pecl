require_relative "../lib/php_pecl_formula"

class PhpAT83Brotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.15.2.tar.gz"
  sha256 "b5e41174652993d516f14243873d217f46dd2d241252f12ccf899cbdbbfa693e"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "60e2b5c7b1c54ff2890ae0f08ae8f73143592ad3a8aad9025fa0ed9b2fb57f94"
    sha256 cellar: :any, ventura: "59bf1bb5f42ab2b7a4598b264f06efc89d0f3966da4cfe72676697a12012e8a8"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
