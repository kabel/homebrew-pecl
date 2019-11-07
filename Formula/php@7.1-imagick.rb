require_relative "../lib/php_pecl_formula"

class PhpAT71Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.4.4.tgz"
  sha256 "8dd5aa16465c218651fc8993e1faecd982e6a597870fd4b937e9ece02d567077"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "d6597aa8aa5ec513cc3829f80103f00035837039f52fcc95c433bfceb52d3b15" => :mojave
    sha256 "bdaa8b841d4d671abd86ff20875c7a7fedaa79864c20934ed2fd93fcb6eb31bd" => :high_sierra
  end

  depends_on "imagemagick"
end
