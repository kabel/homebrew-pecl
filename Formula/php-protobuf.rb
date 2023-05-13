require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.23.0.tgz"
  sha256 "f840e5a7859f5dcff5e23636a9ef3d984b75ba5757f958378ac2f168472367b6"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "f1439f64383686a564106cff9669b47ed14b23defc76c120d1028361db93252e"
    sha256 cellar: :any_skip_relocation, monterey: "143907790182b91563d7fcb85e8e17560d6b8ca961fe7cfba3f203c54e5a044d"
    sha256 cellar: :any_skip_relocation, big_sur:  "c38b0036bbe86dadfdd2622b192e917063940c77492efaf5010f080736c7ecfe"
  end
end
