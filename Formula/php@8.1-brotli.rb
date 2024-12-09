require_relative "../lib/php_pecl_formula"

class PhpAT81Brotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.15.2.tar.gz"
  sha256 "b5e41174652993d516f14243873d217f46dd2d241252f12ccf899cbdbbfa693e"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "200744df3806084f252b29807cd7b5c12d675ef4845f98b1f9e9fd6775fcb1fc"
    sha256 cellar: :any, ventura: "b77528b44bc9fbe9a7037530d82ca126ef814124d951242ff1f49d1717813b79"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
