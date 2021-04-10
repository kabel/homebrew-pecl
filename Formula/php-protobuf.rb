require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.15.8.tgz"
  sha256 "8d36414a81ac731f5c010def3b33b62ca881df99f9b9b1f3e019d9fd93dd7bd8"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "ed784f91732609ac181586e35f735f6e7b05e631fb6e0deb001ecde731d156b4"
    sha256 cellar: :any_skip_relocation, catalina: "2eaadc1aa4378951c32bd41abaef2e05421728181781134816ba2195273de16e"
    sha256 cellar: :any_skip_relocation, mojave:   "26f79abfb18c30b8b19dfa2ef32b93cceef05e52f8de5a0a16053f250da4ecbe"
  end
end
