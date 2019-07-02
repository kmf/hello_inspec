# copyright: 2018, The Authors

title "Hello InSpec"

# you add controls here
control "hi-1.0" do                        # A unique ID for this control
  impact 1.0                                # The criticality, if this control fails.
  title "Check the InSpec command in the path"             # A human-readable title
  desc "InSpec must be installed to be enjoyed this is away we can test this"
  describe command("inspec") do                  # The actual test
    it { should exist }
    its('stdout') { should include "Commands" }
    its('exit_status') { should eq 0 }
  end
end
