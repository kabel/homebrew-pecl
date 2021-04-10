require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.15.8.tgz"
  sha256 "8d36414a81ac731f5c010def3b33b62ca881df99f9b9b1f3e019d9fd93dd7bd8"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "d57831f8edc1720a7d31b0ddf0928afeb5a52bddcfb0cef5fd870e7c5217c4a4"
    sha256 cellar: :any_skip_relocation, catalina: "216850beb7119169afa34316163d4b53067e6d3a3fec3c9cd54ae0f818494894"
    sha256 cellar: :any_skip_relocation, mojave:   "58bed0a16a13c989c5165b4b2a55ae2184baa022305925d56bd9d53b89c601a3"
  end
end
