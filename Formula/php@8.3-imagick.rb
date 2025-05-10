require_relative "../lib/php_pecl_formula"

class PhpAT83Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.8.0.tgz"
  sha256 "bda67461c854f20d6105782b769c524fc37388b75d4481d951644d2167ffeec6"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "c9989fd8c8b9c9441f3d79fed45086c7b18ec69d48a25e6e8a76a9de52e84bce"
    sha256 cellar: :any, ventura: "a21dc02ab81a2fa0296773bb0ef4d916c5d4f53168a75b64ae87029b7e808733"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "imagemagick"
  depends_on "libomp"
end
