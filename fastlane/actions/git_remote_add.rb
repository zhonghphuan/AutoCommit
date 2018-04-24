module Fastlane
  module Actions

    class GitRemoteAddAction < Action
      def self.run(params)
         command = []
         command << "git remote add origin #{params[:origin]}"
         result = Actions.sh(command.join(' ')) 
         UI.success("git remote add origin Successfully")
         return result

      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "git remote add origin"
      end

      def self.details
        # Optional:
        # this is your chance to provide a more detailed description of this action
        "git remote add origin XXX"
      end

      def self.available_options
        # Define all options your action supports. 
        
        # Below a few examples
        [
          FastlaneCore::ConfigItem.new(key: :origin,
                                       env_name: "origin", # The name of the environment variable
                                       description: "远程仓库地址", # a short description of this parameter
                                       optional: true,
                                       is_string: false,
                                       default_value: false)
        ]
      end

      def self.output
        # Define the shared values you are going to provide
        # Example
        [
          ['GIT_REMOTE_ADD_CUSTOM_VALUE', 'A description of what this value contains']
        ]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.authors
        # So no one will ever forget your contribution to fastlane :) You are awesome btw!
        ["钟环"]
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
