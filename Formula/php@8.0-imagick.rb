require_relative "../lib/php_pecl_formula"

class PhpAT80Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.7.0.tgz"
  sha256 "5a364354109029d224bcbb2e82e15b248be9b641227f45e63425c06531792d3e"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "9a03dbb946db22d1c22703304c32cf3425eb4444232d81c1c04837c93f8dada2"
    sha256 cellar: :any, monterey: "7b6b7e7381932314c13ee9582c0e71ed652083ca8145694eb78635cfc46a829e"
    sha256 cellar: :any, big_sur:  "c16b7fbf463db0a3c1e6cdc22ecdf91c93769162d7d855e22f1b30f52d3b7fe4"
  end

  depends_on "imagemagick"
end
