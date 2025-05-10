require_relative "../lib/php_pecl_formula"

class PhpImagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.8.0.tgz"
  sha256 "bda67461c854f20d6105782b769c524fc37388b75d4481d951644d2167ffeec6"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "9c41b7117f51d9a2b8a848b7d8f193dcc1947e839d2ea5344a76a305968222e7"
    sha256 cellar: :any, ventura: "46205d71d153801647602fb57fde76d8355717fd4a33f4d2de5b180aa3cab43e"
  end

  depends_on "imagemagick"
  depends_on "libomp"
end
