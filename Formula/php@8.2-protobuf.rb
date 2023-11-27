require_relative "../lib/php_pecl_formula"

class PhpAT82Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.25.1.tgz"
  sha256 "c1bcbd2671cb350355bf5b7f87f07a6813f11447ac6295cc53160756a9f385a6"
  license "BSD-3-Clause"

  deprecate! date: "2025-12-08", because: :unsupported
end
