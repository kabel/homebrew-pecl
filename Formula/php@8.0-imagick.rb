require_relative "../lib/php_pecl_formula"

class PhpAT80Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.6.0.tgz"
  sha256 "4e2965f2d70dd59a40e7957d56e590e731cad2669e9f89e0fca159d748d2947e"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "8c046cb24acc1c3962bb112bb7e30cb9c5aa301e6943101f2d0923cc6b0d4dc9"
    sha256 catalina: "899eb65ba5e5d337e3f6d65bb9e2ea500baa1f25c361e2d595fa3d609b630162"
  end

  depends_on "imagemagick"
end
