require_relative "../lib/php_pecl_formula"

class PhpImagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.4.4.tgz"
  sha256 "8dd5aa16465c218651fc8993e1faecd982e6a597870fd4b937e9ece02d567077"
  revision 5
  license "PHP-3.01"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "2ed0ebbf72ae2139ebf3bfb07f7b43ec8f770bc707824785ccd0461c773451d1" => :catalina
    sha256 "41777b5b575a107f595c6d33b231d60463e8b1b25a0bcff318a188d7539c68f2" => :mojave
  end

  depends_on "imagemagick"
end
