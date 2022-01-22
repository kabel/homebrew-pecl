require_relative "../lib/php_pecl_formula"

class PhpImagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.7.0.tgz"
  sha256 "5a364354109029d224bcbb2e82e15b248be9b641227f45e63425c06531792d3e"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "a8a638a4b0db912133aadfe2ba1b9dfe9b71e43fe8aab91edbcaf306efe92738"
    sha256 catalina: "1663323e26a005b2c9ee7be094f3c332505daeae81832eeff465fe07669837d6"
  end

  depends_on "imagemagick"
end
