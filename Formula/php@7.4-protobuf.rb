require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.5.tgz"
  sha256 "07ccad172509f1f2c1c0799a297c5f3b2d21ead4442e3a9ce48c54525fd8539c"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "8a0311a0209044dbde4c56a42d326c0be22d6289b1454a13115f1a93ea87b40e"
    sha256 cellar: :any_skip_relocation, big_sur:  "66270cf170f2ef5ddb3efef87f05c9fe37fda354582bac46dedebf7d240fc115"
    sha256 cellar: :any_skip_relocation, catalina: "8da6aa9226e1079a8bf533f9de373e984967d7b040562856fad4fe140b71d47c"
  end
end
