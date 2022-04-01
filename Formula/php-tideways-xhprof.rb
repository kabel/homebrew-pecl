require_relative "../lib/php_pecl_formula"

class PhpTidewaysXhprof < PhpPeclFormula
  extension_dsl "Modern XHProf compatible PHP Profiler"
  homepage "https://tideways.com/"

  url "https://github.com/tideways/php-xhprof-extension/archive/v5.0.4.tar.gz"
  sha256 "a414e5d30cba360fbbc54ce929a6db4ae8a9b93a2e58d447e6a5dd7af6fecf72"
  revision 1
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "8312ce5a76019ca8e8186407024ce9b64bb50f4b67941a4e6df26fa683ff758e"
    sha256 cellar: :any_skip_relocation, big_sur:  "6481f381c1ebf75fcddc761b2b366af9dc6cb18cd8753969013c54fec7c6ef09"
    sha256 cellar: :any_skip_relocation, catalina: "943c909a7a4f3a59ba152ca955b72f20650d6d70a7a1c94ce14ef6e525e60272"
  end
end
