require_relative "../lib/php_pecl_formula"

class PhpImagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.7.0.tgz"
  sha256 "5a364354109029d224bcbb2e82e15b248be9b641227f45e63425c06531792d3e"
  revision 3
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "5bf488c84f09fe88d756e3a0aa19477f978677c4f3542fd4a339be7020d69fa5"
    sha256 cellar: :any, ventura:  "47eedd298c4fee28989520aec48ebdb2fa91b2383da9d743baea858281b1e91a"
    sha256 cellar: :any, monterey: "5832605e487e3eaa98ad870ddb735372f1fd23379bee7bc51136d5b1a18c3943"
  end

  depends_on "imagemagick"
end
