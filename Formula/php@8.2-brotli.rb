require_relative "../lib/php_pecl_formula"

class PhpAT82Brotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.15.2.tar.gz"
  sha256 "b5e41174652993d516f14243873d217f46dd2d241252f12ccf899cbdbbfa693e"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "367f974072fa1edb0bbfea54c4f20529ddcca85e4253d2b8270b097d216cf310"
    sha256 cellar: :any, ventura:  "2b9754def567d4dc5fcb7b511afad138610840e619a2570a9c48787c6edeb4bc"
    sha256 cellar: :any, monterey: "5a559102ef72b6d4e7d39928e0bf09abd056632a17d54ee38bd7bcfb5b79b056"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
