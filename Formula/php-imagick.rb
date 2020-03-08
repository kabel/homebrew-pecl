require_relative "../lib/php_pecl_formula"

class PhpImagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.4.4.tgz"
  sha256 "8dd5aa16465c218651fc8993e1faecd982e6a597870fd4b937e9ece02d567077"
  revision 3

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "6ecf1da93bd5a94df045de90a50a4e787b100124fea73fb6739470d991176f85" => :mojave
    sha256 "3f49b50bfff2d97618c41b1e75df9a32effff9d9c38bd031615f91ef5d8e3193" => :high_sierra
  end

  depends_on "imagemagick"
end
