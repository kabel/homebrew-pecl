require_relative "../lib/php_pecl_formula"

class PhpAT73Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.4.4.tgz"
  sha256 "8dd5aa16465c218651fc8993e1faecd982e6a597870fd4b937e9ece02d567077"
  license "PHP-3.01"
  revision 2

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "f5264a3e0c1becd08bc3d589b9fd212c678b709b752d0a59d558dca82d8a0817" => :catalina
    sha256 "707c184b5b5fb67a815ec24266a179fe11b808d5a6379240ce91501b41118769" => :mojave
  end

  depends_on "imagemagick"
end
