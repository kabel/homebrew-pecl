require_relative "../lib/php_pecl_formula"

class PhpBrotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.13.1.tar.gz"
  sha256 "1eca1af3208e2f6551064e3f26e771453def588898bfc25858ab1db985363e47"
  revision 2
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "bbe46d588e191e9c360ca4517285266698cc8a11141082f69a8f57826b12c326"
    sha256 cellar: :any, monterey: "3e1edc1c6d98424bceda9bfc455207f8d30e8aa5c41b40358122f72fda2e3681"
    sha256 cellar: :any, big_sur:  "81fa694f5fb85fd44222509f71f1e8838148255cd720bf513d9b28a08f7b4129"
  end

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
