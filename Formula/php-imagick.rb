require_relative "../lib/php_pecl_formula"

class PhpImagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.4.4.tgz"
  sha256 "8dd5aa16465c218651fc8993e1faecd982e6a597870fd4b937e9ece02d567077"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "352bddacecaf95233170cd0ba1f6eb05ff387c30d32e2c06b499c81b3079a7e5" => :mojave
    sha256 "f429a88de6d37399d768a96a339a062378da4d5476a7a6cbc19b61737fa4f312" => :high_sierra
  end

  depends_on "imagemagick"
end
