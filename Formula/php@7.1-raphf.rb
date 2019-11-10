require_relative "../lib/php_pecl_formula"

class PhpAT71Raphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.1.tgz"
  sha256 "da3566db17422e5ef08b7ff144162952aabc14cb22407cc6b1d2a2d095812bd0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "3624ab666100e47c7e3fb67937d51dc943e0656b58d613d049cc37ed4eeb0ae9" => :mojave
    sha256 "9ed0686a90b06c77db9a7e106f8afc7dd74375ae869a4652756fd220fe1a2de9" => :high_sierra
  end
end
