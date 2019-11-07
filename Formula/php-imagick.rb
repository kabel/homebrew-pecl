require_relative "../lib/php_pecl_formula"

class PhpImagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.4.4.tgz"
  sha256 "8dd5aa16465c218651fc8993e1faecd982e6a597870fd4b937e9ece02d567077"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "eece9fa6f5798d52840e61297af1be53f230c6cd7894eae8630d1341798c0b22" => :mojave
    sha256 "7a9b4540746a106b34ca87c538bb27b50654312a4cd5880e46b8310393f7484e" => :high_sierra
  end

  depends_on "imagemagick"
end
