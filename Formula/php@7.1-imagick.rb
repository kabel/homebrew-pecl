require_relative "../lib/php_pecl_formula"

class PhpAT71Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.4.4.tgz"
  sha256 "8dd5aa16465c218651fc8993e1faecd982e6a597870fd4b937e9ece02d567077"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "e710515ab55de570282f3cd688969f369c54dcbe7954978b4018bfa7ba499335" => :mojave
    sha256 "98e7878837e23bc130e1bfabffcf16a3d6668ab6fd82b91ec61686ccaac7cd37" => :high_sierra
  end

  depends_on "imagemagick"
end
