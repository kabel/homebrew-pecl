require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-4.32.0.tgz"
  sha256 "4ae29e01061418df1b0b961f55f29561d6dc506ff9806117e8ae5d4ecf640ccf"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "0a1fcfee7ab024230a02a6597acaa165258c6689dc0eb8db9abbe9df6c8321ed"
    sha256 cellar: :any_skip_relocation, ventura: "e5ce08d486ba8994471a43a261e09414acb2b9ff7b0814894c83518b5e4407e8"
  end
end
