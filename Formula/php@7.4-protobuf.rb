require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.17.3.tgz"
  sha256 "b4995573171e61f0e85a1bf4f021b64b7dadbff714019ef2ca7c8723f435d616"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "5131f56ab86141cad0db9263325671ac309006648f3aa12b006a4cf53ce1b07c"
    sha256 cellar: :any_skip_relocation, catalina: "6649104675d53c531abb1d58c7e716ac3ad5682261812ac19180f5718a0aac25"
    sha256 cellar: :any_skip_relocation, mojave:   "904a1ef0bdbb6524f653221ef356300b7327286cbaa57d5826d6083ff2e988b3"
  end
end
