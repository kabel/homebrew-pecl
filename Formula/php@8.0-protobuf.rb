require_relative "../lib/php_pecl_formula"

class PhpAT80Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.23.0.tgz"
  sha256 "f840e5a7859f5dcff5e23636a9ef3d984b75ba5757f958378ac2f168472367b6"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "014b5b1871682ae0e0303419cf2b82e6c3cba663abd2d0ec50332be60b856b11"
    sha256 cellar: :any_skip_relocation, monterey: "c333741386a00faf8cf32dec713a2f1168356eca228095273e59d3df22a85010"
    sha256 cellar: :any_skip_relocation, big_sur:  "523d04a8ac3182fe5f3702ef67c8f72b4119efdf4e981505313df3689e81fd1b"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula
end
