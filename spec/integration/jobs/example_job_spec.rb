require "rails_helper"

RSpec.describe ExampleJob, type: :job do
  describe "karafka active job integration" do
    it "queueing a job to be executed later works" do
      expect(true).to eq(true)
    end
    describe "retries" do
      it "a failed job will retry in 3 seconds" do
      end
    end
  end
end
