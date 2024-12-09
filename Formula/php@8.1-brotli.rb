require_relative "../lib/php_pecl_formula"

class PhpAT81Brotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.15.2.tar.gz"
  sha256 "b5e41174652993d516f14243873d217f46dd2d241252f12ccf899cbdbbfa693e"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "465ae77a692cd53ef19ecf96f9a6ad12ccd4da2d6218f8d9a3446a5d752bf11c"
    sha256 cellar: :any, ventura:  "1e24ae6dfbc5432dc9669282cde397c3465119ccf3f2fdaafdbb481824a7e60c"
    sha256 cellar: :any, monterey: "c68f43ce6164ed4b830c53c3997d35ac753764d2be3f9fc975e843a6726581a5"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
