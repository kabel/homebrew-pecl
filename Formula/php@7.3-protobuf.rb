require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.15.8.tgz"
  sha256 "8d36414a81ac731f5c010def3b33b62ca881df99f9b9b1f3e019d9fd93dd7bd8"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "51908dfeda390864bfbe820c4ba4405b3d191c48fcb05dff216e8d66c1a2f5a6"
    sha256 cellar: :any_skip_relocation, catalina: "6b06db8d2c469fe2ea96fc6baf33de8010476b4bbdef55ee7a1023a7d3d96953"
    sha256 cellar: :any_skip_relocation, mojave:   "b603dd8ee41b4cc539b8a40ee3a02fd3b01ac8eb926be10c7d23edd6d778d0e7"
  end
end
