require_relative "../lib/php_pecl_formula"

class PhpBrotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.15.2.tar.gz"
  sha256 "b5e41174652993d516f14243873d217f46dd2d241252f12ccf899cbdbbfa693e"
  license "MIT"

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
