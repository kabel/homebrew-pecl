require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.19.4.tgz"
  sha256 "8a3a3e519cfe1e1dc5f0550999c5086ca04b92fe2de02588adb4547d4a7b65ba"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "90267e5dd2e2fc35a48dc6b25ece3f2da30fdfa9b0d2d4c20cb171e530009ae3"
    sha256 cellar: :any_skip_relocation, big_sur:  "852574f79e48d346353e34b109322b016d49f28f0852d11d8fc946e9d5296592"
    sha256 cellar: :any_skip_relocation, catalina: "fc209220bb44928f4658f1bf97c7dbfee382c7760d9c4035a2e84e122bb775f2"
  end
end
