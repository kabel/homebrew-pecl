require_relative "../lib/php_pecl_formula"

class PhpAT82Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-4.29.1.tgz"
  sha256 "12cc3b38d055feb2eb4c6b4ca6e2c1e080906d06e9173eea2cc160ecd9d6374b"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "9ee2de93e4d12877a9bbaef6bcda8dc83d727613e86fc7a3502bd605d8b51043"
    sha256 cellar: :any_skip_relocation, ventura:  "6e183df3ad8e239099f7d8dd555511dc1b45255208e9da5170485e0ace70b312"
    sha256 cellar: :any_skip_relocation, monterey: "6a289889d2c91f3e32dbe08bf240d851f6302b62db797b13eba545f3e86b9010"
  end

  deprecate! date: "2026-12-31", because: :unsupported
end
