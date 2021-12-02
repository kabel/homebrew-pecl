require_relative "../lib/php_pecl_formula"

class PhpImagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.6.0.tgz"
  sha256 "4e2965f2d70dd59a40e7957d56e590e731cad2669e9f89e0fca159d748d2947e"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "ad78b488f56edc031ac83ed10e117ce5c62a60de6a2d9111ab5169cd03f8a77a"
    sha256 catalina: "f490108e318d16eeb28725d43ef050d70a905673a1b533107b870176d8be3906"
  end

  depends_on "imagemagick"
end
