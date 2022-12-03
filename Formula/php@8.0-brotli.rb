require_relative "../lib/php_pecl_formula"

class PhpAT80Brotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.13.1.tar.gz"
  sha256 "1eca1af3208e2f6551064e3f26e771453def588898bfc25858ab1db985363e47"
  revision 1
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "88a68c30af178aec30a3992570ca99c9c18cfdf5cc67f8969adbfab89a700c2e"
    sha256 cellar: :any, monterey: "eeb20554e34b26a5d55995d6682152eaf04abf5290e7a44e63e8ea285d998172"
    sha256 cellar: :any, big_sur:  "9e0a9803e71cf8387186c90f38068c3df8888f985925b7b20348204575efca3d"
  end

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
