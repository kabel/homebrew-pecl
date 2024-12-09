require_relative "../lib/php_pecl_formula"

class PhpAT82Brotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.15.2.tar.gz"
  sha256 "b5e41174652993d516f14243873d217f46dd2d241252f12ccf899cbdbbfa693e"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "1ca06b8859c60a895f8bda7219c6590388b379ec1a550904ea2b88740df5cc2d"
    sha256 cellar: :any, ventura: "c1925775e94a02e78e865da069346dd202f61f5a44d8996c46aa8327de0ca3e8"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
