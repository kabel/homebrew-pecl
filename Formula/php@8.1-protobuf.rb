require_relative "../lib/php_pecl_formula"

class PhpAT81Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.25.3.tgz"
  sha256 "daf75724966e0e83856f90c3179a50f681eb3591f3af1fb57e104b8f3d2964e4"
  license "BSD-3-Clause"

  deprecate! date: "2024-11-25", because: :unsupported

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "32955fcb76e945bb25eb2829a379ed83ea430cb3a7bf3b9b50f7f5723ec99cf9"
    sha256 cellar: :any_skip_relocation, ventura:  "3b28a5ff7fe7cfddd1bc170b88849243b31ab3dc6c9e3b236b76b8e2001dd90a"
    sha256 cellar: :any_skip_relocation, monterey: "2959092a2347c6664e6f9073ddb3d8bc4ff841ef57e5e83ec093c6595835cd50"
  end
end
