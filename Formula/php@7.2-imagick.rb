require_relative "../lib/php_pecl_formula"

class PhpAT72Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.4.4.tgz"
  sha256 "8dd5aa16465c218651fc8993e1faecd982e6a597870fd4b937e9ece02d567077"
  license "PHP-3.01"
  revision 2

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "4e4b2e49b0de34d7d08aa3a3739e18997e71a8174fe2e2509f46b69c69499dfb" => :catalina
    sha256 "341c70a0328ce16fcea569b9f46acab879b69cbb348119e124f449ff8d2740c7" => :mojave
  end

  depends_on "imagemagick"
end
