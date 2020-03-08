require_relative "../lib/php_pecl_formula"

class PhpAT72Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.4.4.tgz"
  sha256 "8dd5aa16465c218651fc8993e1faecd982e6a597870fd4b937e9ece02d567077"
  revision 2

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "fb8fcffe173136ffa6fb823169f2cabe21959184f5338b424636edf2625dabf4" => :mojave
    sha256 "2a48c8929f8a0e08fabe3b7bea7f0d9060ae43c5dd0bc6d26e508957ea90be69" => :high_sierra
  end

  depends_on "imagemagick"
end
