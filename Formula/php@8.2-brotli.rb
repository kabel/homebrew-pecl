require_relative "../lib/php_pecl_formula"

class PhpAT82Brotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.14.2.tar.gz"
  sha256 "40b00f6ab75a4ce54b8af009e8ad2ac5077a4a35d6bbb50807324565b8472bee"
  license "MIT"

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
