require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.1.0.tgz"
  sha256 "3f027727615848da928df347bf1cbe7a867f8a362b56eefe8b2457795f8b4492"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "7d85bb54fc96b647da43603f7d9c082ef377c66225658b600c95794d66c5cba8"
    sha256 cellar: :any, monterey: "1479618190744c3ebc2ab345467772266fb23b1f93a22f7e60fb1fba3ff3bae6"
    sha256 cellar: :any, big_sur:  "404becdeed7455034442194fca7ddb5b7bf95d15e11ec43c5debf9a31b6be940"
  end

  depends_on "cmake" => :build
  depends_on "openssl@1.1"
end
