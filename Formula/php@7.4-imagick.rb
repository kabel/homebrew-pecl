require_relative "../lib/php_pecl_formula"

class PhpAT74Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.5.0.tgz"
  sha256 "795db7c36fbacd3d33a4f53ff2d38584c846e80a04dcd04c55e9e46c28f5d229"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "1e120c5909c50eda21ffb7cdbf55928820c673bd6cfe92a60cba445ed4e86510"
    sha256 catalina: "d2f2b45e065cb4f5c1e4542aa236841d066166d718daa013e387044de83e98cc"
    sha256 mojave:   "9175ce6621aab33bfbb8a11ae15bb8daa4241eba7216f111ac6eb2019b0c5685"
  end

  depends_on "imagemagick"
end
