require_relative "../lib/php_pecl_formula"

class PhpImagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.8.0.tgz"
  sha256 "bda67461c854f20d6105782b769c524fc37388b75d4481d951644d2167ffeec6"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "bf47145c5d00e94d2423e589bb3c367f0627ce9150ec15a4411d1810f6a815bc"
    sha256 cellar: :any, ventura: "3d4b90f7e3d290a73605493d37ac0acae6f6f5beea1c188d5db9f459f4df46c4"
  end

  depends_on "imagemagick"
  depends_on "libomp"
end
