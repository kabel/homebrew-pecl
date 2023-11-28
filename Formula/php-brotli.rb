require_relative "../lib/php_pecl_formula"

class PhpBrotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.14.2.tar.gz"
  sha256 "40b00f6ab75a4ce54b8af009e8ad2ac5077a4a35d6bbb50807324565b8472bee"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "c5d33a969e3f0fa0e171f3a7b31bb85ac5ce1f58c6e26b5b30a603594095be58"
    sha256 cellar: :any, ventura:  "627a8a5868fef2a0e5bbedd040cec974d3c0eabbbb5f7a4acf3f7f08b9fe7a71"
    sha256 cellar: :any, monterey: "fd71bd68905d8ccab204aeabf56ab0383e34ff1cd4e6eeca05e6fb192fd4fb3b"
  end

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
