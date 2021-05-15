require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.17.0.tgz"
  sha256 "26c9baaf5da3604aa5f57c0bf1badd90ff91e08a2fd656b2fbc21691aee4ca56"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "1b4fdcec0f0c95ef81414c6473aa0e9fd5fd5713015adaab5e2b89a6df4d3137"
    sha256 cellar: :any_skip_relocation, catalina: "3f9297f0861c450ff4ac07a725313419196e7f2b98738e27e55b1fd11f482b4b"
    sha256 cellar: :any_skip_relocation, mojave:   "b2e172e819d8bf9f9262e26e914ba3bd3194579a28c58eacc7f836b9c095362a"
  end
end
