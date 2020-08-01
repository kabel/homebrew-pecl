require_relative "../lib/php_pecl_formula"

class PhpImagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.4.4.tgz"
  sha256 "8dd5aa16465c218651fc8993e1faecd982e6a597870fd4b937e9ece02d567077"
  license "PHP-3.01"
  revision 3

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "87913ce1a898b86f9f948c7ffb6c8b962a8c99b6b43da5df3674f2fdf50ddafc" => :catalina
    sha256 "513ebdd6ff513316ce7cdd528df5b4ad66c55aa8ea75e2688fd7b35196cec153" => :mojave
  end

  depends_on "imagemagick"
end
