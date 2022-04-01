require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.19.4.tgz"
  sha256 "8a3a3e519cfe1e1dc5f0550999c5086ca04b92fe2de02588adb4547d4a7b65ba"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "ac5eb280a9ebbd72ac18d9acfda89955d1c7b87f0bf00a1276e981a66804778a"
    sha256 cellar: :any_skip_relocation, big_sur:  "9737f03eb88f3ee597eb4105495ff527b5909c92ecf7e7c0c484d1033748fac8"
    sha256 cellar: :any_skip_relocation, catalina: "7451e54dbfaf0ffe330a67e31f60fb16cd513df0b68a54f5d89d36db13b737c0"
  end
end
