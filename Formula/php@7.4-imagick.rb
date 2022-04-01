require_relative "../lib/php_pecl_formula"

class PhpAT74Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.7.0.tgz"
  sha256 "5a364354109029d224bcbb2e82e15b248be9b641227f45e63425c06531792d3e"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "44612dbe6f38b47cc358d53e02969f7302339d469bf31fc90b5dcb564846c90e"
    sha256 cellar: :any, big_sur:  "359795a681da64932d6a226422650919760e4a7be7a7d755bc214b741260868f"
    sha256 cellar: :any, catalina: "90927aaf4dd3cf443ab7a157bc03a81b4b1c1e5e57cad51f961e80b3d6b16920"
  end

  depends_on "imagemagick"
end
