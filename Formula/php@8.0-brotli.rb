require_relative "../lib/php_pecl_formula"

class PhpAT80Brotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.14.2.tar.gz"
  sha256 "40b00f6ab75a4ce54b8af009e8ad2ac5077a4a35d6bbb50807324565b8472bee"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "88a68c30af178aec30a3992570ca99c9c18cfdf5cc67f8969adbfab89a700c2e"
    sha256 cellar: :any, monterey: "eeb20554e34b26a5d55995d6682152eaf04abf5290e7a44e63e8ea285d998172"
    sha256 cellar: :any, big_sur:  "9e0a9803e71cf8387186c90f38068c3df8888f985925b7b20348204575efca3d"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
