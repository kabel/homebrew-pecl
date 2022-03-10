require_relative "../lib/php_pecl_formula"

class PhpAT74Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.44.0.tgz"
  sha256 "f6d6be7e1bd49b3aae7ada97233fe68172100a71a23e5039acb2c0c1b87e4f11"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "6cda21c2987def060066df830acb47b5c15e769936713c294c2f28149c93b970"
    sha256 cellar: :any_skip_relocation, catalina: "6f9e8d2600f920799ef7314b7eb33822430a020d50e7418b0a404fd9808f476b"
  end
end
