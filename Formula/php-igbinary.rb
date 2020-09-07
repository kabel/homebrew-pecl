require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.1.5.tgz"
  sha256 "e1f7dc74233052eb64d251c00e95889110de2406cdf5e71139050194da596d92"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "9e053258fdf9340cf2104a10f497eec44ab8ca57f0239e10911ca3d2fea53632" => :catalina
    sha256 "ec7e709b2781365f16792f0bcf3dc3331baa9c342075f279c1111e329926fef9" => :mojave
  end
end
