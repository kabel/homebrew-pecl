require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.20.0.tgz"
  sha256 "123af5ba4088ba4690ad12742f26ca2e5c9cc67d0db6cfa83f7ec8d0e7ad9baf"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "ac5eb280a9ebbd72ac18d9acfda89955d1c7b87f0bf00a1276e981a66804778a"
    sha256 cellar: :any_skip_relocation, big_sur:  "9737f03eb88f3ee597eb4105495ff527b5909c92ecf7e7c0c484d1033748fac8"
    sha256 cellar: :any_skip_relocation, catalina: "7451e54dbfaf0ffe330a67e31f60fb16cd513df0b68a54f5d89d36db13b737c0"
  end
end
