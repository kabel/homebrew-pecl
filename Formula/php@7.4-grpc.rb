require_relative "../lib/php_pecl_formula"

class PhpAT74Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.50.0.tgz"
  sha256 "2e0bebc351d9cb07ef1d3685f3c4f976d297bbf946479c5e4be4ecaaa3500927"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "fa3931d9c4c921339dbb584a78793e32ab96fda324839d2dcdd19f483e6cc600"
    sha256 cellar: :any_skip_relocation, monterey: "51eb086a78ec81260d10e479b6340dfe0b131de023a39bdd85477f41422974af"
    sha256 cellar: :any_skip_relocation, big_sur:  "65696e706a02d28517454b121392fda04cb70c965c2b4f7891f6569d434ca54f"
    sha256 cellar: :any_skip_relocation, catalina: "76dac12444cf2107850f7928dda0e97df02819b03747ab60366b12eeed83d15d"
  end
end
