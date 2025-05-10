require_relative "../lib/php_pecl_formula"

class PhpAT82Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.8.0.tgz"
  sha256 "bda67461c854f20d6105782b769c524fc37388b75d4481d951644d2167ffeec6"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "383d9f5a91d79376d6013bb4b114d2a8b5339a8c061c94280b71fcc4708a778c"
    sha256 cellar: :any, ventura: "6858f50f912860fdf2e4ede7b68068bb4b747723d3b588b2610a04382400d90d"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "imagemagick"
  depends_on "libomp"
end
