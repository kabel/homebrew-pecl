require_relative "../lib/php_pecl_formula"

class PhpAT82Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-4.30.2.tgz"
  sha256 "a73856143393f138f0cfde15ce4047f3ec86afd2c9835ac9dc676150afe416aa"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "ba403ecc9d2f5cf03296116804f54d9a58f6d12ad7d6c016f086739375364e5d"
    sha256 cellar: :any_skip_relocation, ventura: "0d2967b4207041bb83e7e8fae68d7f0213525bfc5a9d209c5dfaeab11dad1cb3"
  end

  deprecate! date: "2026-12-31", because: :unsupported
end
