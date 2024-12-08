require_relative "../lib/php_pecl_formula"

class PhpAT81Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.7.0.tgz"
  sha256 "5a364354109029d224bcbb2e82e15b248be9b641227f45e63425c06531792d3e"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "8f88f93fd4a2a9e61143ebcb10d2dff28bd813039c3bc2bbdd26dc38899fe1d3"
    sha256 cellar: :any, ventura:  "6bd11a29cc9f66ad8223f0f742212012933d30c361d4f44d9a456e783f415fd5"
    sha256 cellar: :any, monterey: "79df35368c2e8bb570295a68fc1e11efad83d89e9baa61dc0d73ea4cbc127317"
    sha256 cellar: :any, big_sur:  "d696ce9df15ad283a6a8734f969f0c63346364ce9f926f3ef09cd0555c266472"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "imagemagick"
end
