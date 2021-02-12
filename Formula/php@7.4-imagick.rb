require_relative "../lib/php_pecl_formula"

class PhpAT74Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.4.4.tgz"
  sha256 "8dd5aa16465c218651fc8993e1faecd982e6a597870fd4b937e9ece02d567077"
  license "PHP-3.01"
  revision 4

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 "c23a14e5279d851c734acb4e62dc0c427d3727d7b402ca89471917f0f8e45b6e" => :catalina
    sha256 "26102711f75f16c327b613a69935ede7d93bddb3efe5118bf944d0b00668febe" => :mojave
  end

  depends_on "imagemagick"
end
