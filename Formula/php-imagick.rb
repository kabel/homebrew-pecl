require_relative "../lib/php_pecl_formula"

class PhpImagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.7.0.tgz"
  sha256 "5a364354109029d224bcbb2e82e15b248be9b641227f45e63425c06531792d3e"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "b81778da20c2714ae8c50adb110a192d0a5b0b684d781f4e322fd256753977e9"
    sha256 cellar: :any, big_sur:  "ed1f761e03a2048755624217af38e05e818e8dd88db41cfe6342aee4c3f84d22"
    sha256 cellar: :any, catalina: "df02fdcf9a1a3fdb5115b03bf7632ce63c3d5bc825e224abe0ea5b0deba5f6b6"
  end

  depends_on "imagemagick"
end
