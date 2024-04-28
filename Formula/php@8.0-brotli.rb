require_relative "../lib/php_pecl_formula"

class PhpAT80Brotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.14.2.tar.gz"
  sha256 "40b00f6ab75a4ce54b8af009e8ad2ac5077a4a35d6bbb50807324565b8472bee"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "f33cd0946452e16b736895ece62c117a46a7e11012cb6714c50f811b87a6a11e"
    sha256 cellar: :any, ventura:  "7ce49eae24a703c3457bf8969c09c42abcb9754e4eb77aacd4907501df823934"
    sha256 cellar: :any, monterey: "b2ac4ada96f6ff2f3073504332b17f1e983b43132410d85533663846af346931"
  end

  deprecate! date: "2023-11-26", because: :unsupported

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
