require_relative "../lib/php_pecl_formula"

class PhpAT83Brotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.18.2.tar.gz"
  sha256 "d79ff26c24859485166a805e4340cdebdaad6246d93e9c5eeb90ae681bc801a6"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "1fdfe50dfb0f3ce4cfc089c34ccceb880e0fa6c5db52611a593fff889f2661b0"
    sha256 cellar: :any, ventura: "7fdfd4fc2a71ebdc3badcb9635d4af0474342b8fe00e4925f2359de616e201d6"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
