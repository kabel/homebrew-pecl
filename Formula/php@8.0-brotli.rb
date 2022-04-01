require_relative "../lib/php_pecl_formula"

class PhpAT80Brotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.13.1.tar.gz"
  sha256 "1eca1af3208e2f6551064e3f26e771453def588898bfc25858ab1db985363e47"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "e4e86e4968a4b08d853933c3cf145854874bcba56e36fd922e65ce03e78ab0d3"
    sha256 cellar: :any, big_sur:  "2ca82be8c77a97fd897cb48ba73e67fc1d2cead1fc2664c3c596cf7df4b82e1b"
    sha256 cellar: :any, catalina: "06eecf32d72e0c033321720f1669162e6e606ba0f9f48d9276b0bd4dc7a108bc"
  end

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
