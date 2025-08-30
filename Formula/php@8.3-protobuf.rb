require_relative "../lib/php_pecl_formula"

class PhpAT83Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-4.32.0.tgz"
  sha256 "4ae29e01061418df1b0b961f55f29561d6dc506ff9806117e8ae5d4ecf640ccf"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "f997561161e020316f024b4f90330d59d038d9ff99a21d01f91b7d5402d9e002"
    sha256 cellar: :any_skip_relocation, ventura: "559dabb29e89524fdf80da0be62608c0acfbca1f16df32f03917de80bc13af2d"
  end

  deprecate! date: "2027-12-31", because: :unsupported
end
