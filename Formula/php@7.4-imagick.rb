require_relative "../lib/php_pecl_formula"

class PhpAT74Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.4.4.tgz"
  sha256 "8dd5aa16465c218651fc8993e1faecd982e6a597870fd4b937e9ece02d567077"
  license "PHP-3.01"
  revision 4

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 catalina: "d4f4c55532755c4ef437c96eeeb4dc936b9d2a40596e00dfd1f374f3730eacf4"
    sha256 mojave:   "41be61f4b55a6b57d307cd1afef2c498909338d0b4aa14c47a64ab908fbe1212"
  end

  depends_on "imagemagick"
end
