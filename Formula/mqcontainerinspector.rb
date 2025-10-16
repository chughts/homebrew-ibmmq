=begin
Copyright 2025 IBM Corp.

Licensed under the Apache License, Version 2.0 (the 'License');
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
=end

class Mqcontainerinspector < Formula

  desc "A collection of tools for interacting with IBM® MQ queue managers running in containers."
  homepage "https://github.com/Apurv-1998/homebrew-ibmmq.git"

  # TODO: Confirm -> we will not be creating the release for the mq-container-inspector, hence will not be having the tar-ball and the sha
  # If we are going for a release then we should include url and sha265
  # url:
  # sha256:

  # If we are not going for the release we can directly fetch the code from the head
  head "ssh://git@github.ibm.com/mq-cloudpak/mq-container-inspector.git", branch: "main"

  depends_on "go" => :build

  def install
    ENV["CGO_ENABLED"] = "0"
    ldflags = %W[-s -w]

    system "go", "build", *std_go_args(output: bin/"mq-container-inspector", ldflags: ldflags), "."

  end

  test do
    system "#{bin}/mq-container-inspector", "--help"
  end

end