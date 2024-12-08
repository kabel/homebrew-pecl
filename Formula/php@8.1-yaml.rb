require_relative "../lib/php_pecl_formula"

class PhpAT81Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.4.tgz"
  sha256 "8eb353baf87f15b1b62ac6eb71c8b589685958a1fe8b0e3d22ac59560d0e8913"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "65e61e38368ef3507c243e88502b8aaa9b8116d71c0baa6194d3e3e4e2cf5849"
    sha256 cellar: :any, ventura: "ce7f26b69f2868b2f62cc31b08b3bb48d9bf8fc48129de947b721c06efbc11fc"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "libyaml"

  configure_arg "--with-yaml=#{Formula["libyaml"].opt_prefix}"
end
