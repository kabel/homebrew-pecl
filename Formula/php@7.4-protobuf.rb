require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.17.0.tgz"
  sha256 "26c9baaf5da3604aa5f57c0bf1badd90ff91e08a2fd656b2fbc21691aee4ca56"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "52ffd3a22914ea096116218068c0edc4c3f85efb03ac6bc7f820c91c79d7fbb4"
    sha256 cellar: :any_skip_relocation, catalina: "1e753b95caded8c9ea41dc5cff40e18479c9718cbcf4bbc90672b8eebac87d97"
    sha256 cellar: :any_skip_relocation, mojave:   "26bf65a37a2e74518f194dc0b66573ed7dca4878049d9d8f620d3829c8c56e55"
  end
end
