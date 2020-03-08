require_relative "../lib/php_pecl_formula"

class PhpAT73Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.4.4.tgz"
  sha256 "8dd5aa16465c218651fc8993e1faecd982e6a597870fd4b937e9ece02d567077"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "0855abfcba6cb2b7e789fc67d258082bc554cd6b6198a03518f3a866ae70d086" => :mojave
    sha256 "263267c61cb3a026ed880427b399fd179316fbbcc0295fd19ae06cbfa0012b70" => :high_sierra
  end

  depends_on "imagemagick"
end
