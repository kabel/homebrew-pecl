require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-4.30.0.tgz"
  sha256 "a14bcd863d3c895d0c3a6bb6f575c57cbe89c525a408f72046ab057516648f84"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "3c0a8e71419de4654a07167e6857284024e2782a00ebab8a8d366a6c2f241637"
    sha256 cellar: :any_skip_relocation, ventura: "223845f77db271908cd937b3b96096cbd8a36f1bb780b05ce9ec6e0782a1a06e"
  end
end
