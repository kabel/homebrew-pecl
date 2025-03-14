require_relative "../lib/php_pecl_formula"

class PhpAT83Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-4.30.0.tgz"
  sha256 "a14bcd863d3c895d0c3a6bb6f575c57cbe89c525a408f72046ab057516648f84"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "f235db28435d9ae5df85fd793e838945ab8fc8c8654a8a0396bd6f245a7bb010"
    sha256 cellar: :any_skip_relocation, ventura: "d71d446bf7264fb9c16d1df5f9aebf9898492e614bd5f8a97f2eb939b5415bb5"
  end

  deprecate! date: "2027-12-31", because: :unsupported
end
