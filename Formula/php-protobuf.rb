require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.10.tgz"
  sha256 "49fe674116eb5ad61033a0cee4beafd5a0abe50cb0188c9f4ae35932c85e8728"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "c035fb909ae4e71cfe9cdba2b04ec0b47e006461e6e8e97d52e882e0e57fc6d8"
    sha256 cellar: :any_skip_relocation, monterey: "56772cb319fe1084704b656ad76b95e9c0b026882926aceeb29141262757e25a"
    sha256 cellar: :any_skip_relocation, big_sur:  "d2336c2ad35efc610e472d18d610b93e162bf9c00d78ea9900e094eff4de0b32"
  end
end
