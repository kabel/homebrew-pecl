require_relative "../lib/php_pecl_formula"

class PhpAT73Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.4.4.tgz"
  sha256 "8dd5aa16465c218651fc8993e1faecd982e6a597870fd4b937e9ece02d567077"
  license "PHP-3.01"
  revision 4

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "e5f938c15b792678d2658162cf342ced949957b0518df23e12013eca36ad953e"
    sha256 catalina: "af3df7c0c27ea7a9290f4383dcafbc5ed48de0dbbff4cbe75af9cd693d34dead"
    sha256 mojave:   "03dc7e10b312979b66b3de70314d2f9717cf04bb348e845108bedd073e693566"
  end

  depends_on "imagemagick"
end
