require 'helper'

RSpec.describe Flipper::UI::Configuration do
  let(:configuration) { described_class.new }

  describe "#actors" do
    it "has default text" do
      expect(configuration.actors.title).to eq("Actors")
      expect(configuration.actors.description).to eq("Enable actors using the form above.")
    end

    it "can be updated" do
      configuration.actors.title = "Actors Section"
      expect(configuration.actors.title).to eq("Actors Section")
    end
  end

  describe "#groups" do
    it "has default text" do
      expect(configuration.groups.title).to eq("Groups")
      expect(configuration.groups.description).to eq("Enable groups using the form above.")
    end
  end

  describe "#percentage_of_actors" do
    it "has default text" do
      expect(configuration.percentage_of_actors.title).to eq("Percentage of Actors")
      expect(configuration.percentage_of_actors.description).to eq("Percentage of actors functions independently of percentage of time. If you enable 50% of Actors and 25% of Time then the feature will always be enabled for 50% of users and occasionally enabled 25% of the time for everyone.")
    end
  end

  describe "#percentage_of_time" do
    it "has default text" do
      expect(configuration.percentage_of_time.title).to eq("Percentage of Time")
      expect(configuration.percentage_of_time.description).to eq("Percentage of actors functions independently of percentage of time. If you enable 50% of Actors and 25% of Time then the feature will always be enabled for 50% of users and occasionally enabled 25% of the time for everyone.")
    end
  end

  describe "#delete" do
    it "has default text" do
      expect(configuration.delete.title).to eq("Danger Zone")
      expect(configuration.delete.description).to eq("Deleting a feature removes it from the list of features and disables it for everyone.")
    end
  end
end
