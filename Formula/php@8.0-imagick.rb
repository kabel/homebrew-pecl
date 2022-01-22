require_relative "../lib/php_pecl_formula"

class PhpAT80Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.7.0.tgz"
  sha256 "5a364354109029d224bcbb2e82e15b248be9b641227f45e63425c06531792d3e"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "8c046cb24acc1c3962bb112bb7e30cb9c5aa301e6943101f2d0923cc6b0d4dc9"
    sha256 catalina: "899eb65ba5e5d337e3f6d65bb9e2ea500baa1f25c361e2d595fa3d609b630162"
  end

  depends_on "imagemagick"
end
