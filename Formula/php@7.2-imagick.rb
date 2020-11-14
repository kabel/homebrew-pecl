require_relative "../lib/php_pecl_formula"

class PhpAT72Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.4.4.tgz"
  sha256 "8dd5aa16465c218651fc8993e1faecd982e6a597870fd4b937e9ece02d567077"
  license "PHP-3.01"
  revision 3

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "af3f7705ea21753d88cd50f9e0e823f03e323dc9d4eb1ae0c6e41878e2481bd2" => :catalina
    sha256 "b3f36faed77261dfac869e1daf7ed6a0b3593b307f0fe8104add9131afa8d2cc" => :mojave
  end

  depends_on "imagemagick"
end
