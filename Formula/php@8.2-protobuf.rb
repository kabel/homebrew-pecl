require_relative "../lib/php_pecl_formula"

class PhpAT82Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-4.32.0.tgz"
  sha256 "4ae29e01061418df1b0b961f55f29561d6dc506ff9806117e8ae5d4ecf640ccf"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "028cad997ccf1dc5544933913c3c9301a1af0c5469c886c8a53fee375c3f7aa0"
    sha256 cellar: :any_skip_relocation, ventura: "5164a71f2a709b60cfcdde5a88d33466081ebc10e59bc538dce167196f62b378"
  end

  deprecate! date: "2026-12-31", because: :unsupported
end
