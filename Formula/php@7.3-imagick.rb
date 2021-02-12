require_relative "../lib/php_pecl_formula"

class PhpAT73Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.4.4.tgz"
  sha256 "8dd5aa16465c218651fc8993e1faecd982e6a597870fd4b937e9ece02d567077"
  license "PHP-3.01"
  revision 3

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 "d4521fa630a1c100630ed7e9fd11c9887cb5af5e0c390b161fcd1034c33ebfab" => :catalina
    sha256 "206cd695a6af391ee8cbc566754cb2588512ee6be6dea3f2a5877479eab55998" => :mojave
  end

  depends_on "imagemagick"
end
