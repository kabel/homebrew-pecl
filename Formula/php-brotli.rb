require_relative "../lib/php_pecl_formula"

class PhpBrotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.13.1.tar.gz"
  sha256 "1eca1af3208e2f6551064e3f26e771453def588898bfc25858ab1db985363e47"
  revision 1
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "c6e32056d32294730019090ba52874ce06f5e378325e0c93978fb53333b631ac"
    sha256 cellar: :any, big_sur:  "e77692443fc1a358a4db2db970ff11e4efbe72b4b04c905bdd7cbfaaa2b76728"
    sha256 cellar: :any, catalina: "5e00a1eefca9821800b88a02af4bf220961c946400c784e181793057ee69207a"
  end

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
