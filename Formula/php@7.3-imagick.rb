require_relative "../lib/php_pecl_formula"

class PhpAT73Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.4.4.tgz"
  sha256 "8dd5aa16465c218651fc8993e1faecd982e6a597870fd4b937e9ece02d567077"
  license "PHP-3.01"
  revision 3

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 catalina: "78f0025af188929326dfdfa4b5f327a70470e4151959ece386f822f64e02b702"
    sha256 mojave:   "ac02e2efcb445eef00cbc5206f8ba2221191ea70c33c7e0fbf0ba740456503aa"
  end

  depends_on "imagemagick"
end
