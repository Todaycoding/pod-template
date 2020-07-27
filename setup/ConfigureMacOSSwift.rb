module Pod

  class ConfigureMacOSSwift
    attr_reader :configurator

    def self.perform(options)
      new(options).perform
    end

    def initialize(options)
      @configurator = options.fetch(:configurator)
    end

    def perform
      keep_demo = configurator.ask_with_answers("Would you like to include a demo application with your library", ["Yes", "No"]).to_sym

      framework = configurator.ask_with_answers("Which testing frameworks will you use", ["Quick", "None"]).to_sym
      case framework
        when :quick
          configurator.add_pod_to_podfile "Quick', '~> 3.0.0"
          configurator.add_pod_to_podfile "Nimble', '~> 8.1.1"
          configurator.set_test_framework "quick", "swift"

        when :none
          configurator.set_test_framework "xctest", "swift"
      end

      Pod::ProjectManipulator.new({
        :configurator => @configurator,
        :xcodeproj_path => "templates/macos-swift/Example/PROJECT.xcodeproj",
        :platform => :osx,
        :remove_demo_project => (keep_demo == :no),
        :prefix => ""
      }).run

      `mv ./templates/macos-swift/* ./`

      `mv ./NAME-osx.podspec ./NAME.podspec`
    end
  end

end