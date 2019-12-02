require_relative "../lib/php_pecl_formula"

class PhpAT73Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.0.1.tgz"
  sha256 "5959607f3e236e19a9d01e1a8c74800fb3138f3528ba6601deedbd8b83ab12f1"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "1f9a19edce50fc41553794d0e8d0d20a09d6bb6577dec3c4dde554e74622d4f7" => :mojave
    sha256 "17c069911e2ec3f3bc49c6397c5f8045d345caf822d78e10e6da13de73832142" => :high_sierra
  end

end
