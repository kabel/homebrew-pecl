require_relative "../lib/php_pecl_formula"

class PhpImagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.7.0.tgz"
  sha256 "5a364354109029d224bcbb2e82e15b248be9b641227f45e63425c06531792d3e"
  revision 2
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "2aef88a77d807e06a62daee02ba11f0a795a3c20f0c93260d75a4a410e1cda62"
    sha256 cellar: :any, monterey: "ba2ded8930499a82c6a2a3d962267876928133370d31cffeecaacfe3c2f04e74"
    sha256 cellar: :any, big_sur:  "4db17c4a1167245043be09257164fac6e23ee2223a6882165e2f58280baeb667"
  end

  depends_on "imagemagick"
end
