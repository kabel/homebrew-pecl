require_relative "../lib/php_pecl_formula"

class PhpBrotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.18.2.tar.gz"
  sha256 "d79ff26c24859485166a805e4340cdebdaad6246d93e9c5eeb90ae681bc801a6"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "ff8a1223d6c3e234d6e9849b4b9ad2df69df5f5508820037a7b802ef2832a026"
    sha256 cellar: :any, ventura: "f2a39f2c91fb1076e649f1df9fe676e0132c405b056d91cd9b4dd20c37b9e192"
  end

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
