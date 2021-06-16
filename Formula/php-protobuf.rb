require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.17.3.tgz"
  sha256 "b4995573171e61f0e85a1bf4f021b64b7dadbff714019ef2ca7c8723f435d616"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "cb6acbf3df60ae531e00b1864b01131b66c8cd3c22065d340f003259579136c8"
    sha256 cellar: :any_skip_relocation, catalina: "37ad15a51df258b2583932605775f7e1fa7960ca6c782866a2d62cf258f766c0"
    sha256 cellar: :any_skip_relocation, mojave:   "4fdeb8d72539b93887498db8e17495c3caa1a4f0a7e47c27ccefeb088e7d95e1"
  end
end
