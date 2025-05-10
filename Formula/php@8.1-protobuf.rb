require_relative "../lib/php_pecl_formula"

class PhpAT81Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-4.30.2.tgz"
  sha256 "a73856143393f138f0cfde15ce4047f3ec86afd2c9835ac9dc676150afe416aa"
  license "BSD-3-Clause"

  deprecate! date: "2025-12-31", because: :unsupported

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "3a66f6f261001826130badebb2064bde68bdbbafe0580ca2012db301d79c38da"
    sha256 cellar: :any_skip_relocation, ventura: "faf9f6c44bb700c511fe57a42c6b351d2662b1f81659d7eb63b543cf70268afe"
  end
end
