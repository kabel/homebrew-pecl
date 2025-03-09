require_relative "../lib/php_pecl_formula"

class PhpAT81Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-4.30.0.tgz"
  sha256 "a14bcd863d3c895d0c3a6bb6f575c57cbe89c525a408f72046ab057516648f84"
  license "BSD-3-Clause"

  deprecate! date: "2025-12-31", because: :unsupported

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "0d422ff9f0c8318fabf57d599b85b3d1cad25f365128a9252ab5a11a649010a7"
    sha256 cellar: :any_skip_relocation, ventura: "2b6988081e6e7f12117d0071e1498f711cd3ff18e362938fb0aafcd9731c3cd1"
  end
end
