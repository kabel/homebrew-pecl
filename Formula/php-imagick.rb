require_relative "../lib/php_pecl_formula"

class PhpImagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.6.0.tgz"
  sha256 "4e2965f2d70dd59a40e7957d56e590e731cad2669e9f89e0fca159d748d2947e"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "a8a638a4b0db912133aadfe2ba1b9dfe9b71e43fe8aab91edbcaf306efe92738"
    sha256 catalina: "1663323e26a005b2c9ee7be094f3c332505daeae81832eeff465fe07669837d6"
  end

  depends_on "imagemagick"
end
