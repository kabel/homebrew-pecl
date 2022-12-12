require_relative "../lib/php_pecl_formula"

class PhpAT81Raphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.1.tgz"
  sha256 "da3566db17422e5ef08b7ff144162952aabc14cb22407cc6b1d2a2d095812bd0"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "60d5f2916898b82b83996ad258347bb9862aa84476ef33eea2365652677712c7"
    sha256 cellar: :any_skip_relocation, monterey: "203ee0bb662149c32d35bf632b886267949aba9acad8e7762cfc7a513896db73"
    sha256 cellar: :any_skip_relocation, big_sur:  "47e8932310a8f96660ed0e85b6cc9379fe07532d197cf6235580a4134183f2dd"
  end

  conf_order "05"
end
