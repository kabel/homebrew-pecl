require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.1.6.tgz"
  sha256 "b9bf87dc4d861c6769ae2a13b085395e2741505c629895ec4559781a5031fdea"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "9e053258fdf9340cf2104a10f497eec44ab8ca57f0239e10911ca3d2fea53632" => :catalina
    sha256 "ec7e709b2781365f16792f0bcf3dc3331baa9c342075f279c1111e329926fef9" => :mojave
  end
end
