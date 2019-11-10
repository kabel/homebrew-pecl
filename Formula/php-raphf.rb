require_relative "../lib/php_pecl_formula"

class PhpRaphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.1.tgz"
  sha256 "da3566db17422e5ef08b7ff144162952aabc14cb22407cc6b1d2a2d095812bd0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "9bc380831d6c36a47a7fb8fdaf43246f8efb762c3cbeab8416ebeebf6e2bba6d" => :mojave
    sha256 "7a6dc97bd509d8d4744bcb6ed12d49ebec0795b0054b93a06880b3e3f8950f4b" => :high_sierra
  end
end
