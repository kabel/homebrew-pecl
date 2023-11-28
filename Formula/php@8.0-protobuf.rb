require_relative "../lib/php_pecl_formula"

class PhpAT80Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.25.1.tgz"
  sha256 "c1bcbd2671cb350355bf5b7f87f07a6813f11447ac6295cc53160756a9f385a6"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "df89e020a2b69d55b5139a9d14b88d131c436c048b02ffbf4d7f468f967feea4"
    sha256 cellar: :any_skip_relocation, ventura:  "fb6c0bf18a97e04834279374ac0d58f074936e98421c35bc8f4d09dad625c3d2"
    sha256 cellar: :any_skip_relocation, monterey: "e5e0c6d78e6e1e825c6c1fe3138d614fdb8f7afcf8b0a405582a5cbc32e56553"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula
end
