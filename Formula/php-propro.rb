require_relative "../lib/php_pecl_formula"

class PhpPropro < PhpPeclFormula
  extension_dsl "Property proxy"

  url "https://pecl.php.net/get/propro-2.1.0.tgz"
  sha256 "7bba0653d90cd8f61816e13ac6c0f7102b4a16dc4c4e966095a121eeb4ae8271"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "7d37a081912a412df2f0201dacfbf9be09f18e08be12ade34fbc1c4409addd89" => :mojave
    sha256 "4f087f6978b09d111a2570c4498e4fb05f44a73f2ac37f8f27749eca63aac260" => :high_sierra
  end

end
