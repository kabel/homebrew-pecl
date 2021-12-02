require_relative "../lib/php_pecl_formula"

class PhpImagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.5.1.tgz"
  sha256 "243ff2094edcacb2ae46ee3a4d9f38a60a4f26a6a71f59023b6198cbed0f7f81"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "ad78b488f56edc031ac83ed10e117ce5c62a60de6a2d9111ab5169cd03f8a77a"
    sha256 catalina: "f490108e318d16eeb28725d43ef050d70a905673a1b533107b870176d8be3906"
  end

  depends_on "imagemagick"
end
