require_relative "../lib/php_pecl_formula"

class PhpAT83Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.8.0.tgz"
  sha256 "bda67461c854f20d6105782b769c524fc37388b75d4481d951644d2167ffeec6"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "e888682898cc2d3e8c07229d41907873ae95c57a646d8957df45db554ed31e77"
    sha256 cellar: :any, ventura: "ac9c9ae6b5d597e43c63d697adfb36c6d34fff7ce0b2ea84e82cc21f18d71cb6"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "imagemagick"
  depends_on "libomp"
end
