module Fastlane
  module Actions

    class GitCheckoutAction < Action
      def self.run(params)
         command = []
         command << "git checkout #{params[:branch]}"
         result = Actions.sh(command.join(' ')) 
         UI.success("git checkout Successfully")
         return result
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "git checkout"
      end

      def self.details
        # Optional:
        # this is your chance to provide a more detailed description of this action
        "git checkout"
      end

      def self.available_options
        # Define all options your action supports. 
        
        # Below a few examples
        [
          FastlaneCore::ConfigItem.new(key: :branch,
                                       env_name: "branch", # The name of the environment variable
                                       description: "git checkout", # a short description of this parameter
                                       optional: true,
                                       is_string: false,
                                       default_value: false)
        ]
      end

      def self.output
        # Define the shared values you are going to provide
        # Example
        [
          ['GIT_CHECKOUT_CUSTOM_VALUE', 'A description of what this value contains']
        ]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.authors
        # So no one will ever forget your contribution to fastlane :) You are awesome btw!
        ["Your GitHub/Twitter Name"]
      end

      def self.is_supported?(platform)
        # you can do things like
        # 
        #  true
        # 
        #  platform == :ios
        # 
        #  [:ios, :mac].include?(platform)
        # 

        platform == :ios
      end
    end
  end
end
