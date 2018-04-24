module Fastlane
  module Actions
    # Push local changes to the remote branch
    class PullToGitRemoteAction < Action
      def self.run(params)
        command = [
          'git',
          'pull',
          params[:remote],
          params[:branch]
        ]

        Actions.sh(command.join(' '))
        UI.message('Successfully pushed to remote.')
      end

      def self.description
        "Pull the remote branch"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :remote,
                                       env_name: "FL_GIT_PULL_LOCAL_BRANCH",
                                       description: "The local branch to pull from. Defaults to the current branch",
                                       default_value_dynamic: true,
                                       optional: true),
          FastlaneCore::ConfigItem.new(key: :branch,
                                       env_name: "FL_GIT_PULL_REMOTE_BRANCH",
                                       description: "The remote branch to pull to. Defaults to the local branch",
                                       default_value_dynamic: true,
                                       optional: true)
        ]
      end

      def self.author
        "lmirosevic"
      end

      def self.details
        [
          "Lets you pull a remote git repo.",
        ].join(" ")
      end

      def self.is_supported?(platform)
        true
      end

      def self.example_code
        [
          'pull_to_git_remote # simple version. pushes "master" branch to "origin" remote',
          'pull_to_git_remote(
            remote: "origin",         # optional, default: "origin"
            local_branch: "develop",  # optional, aliased by "branch", default: "master"
            remote_branch: "develop", # optional, default is set to local_branch
          )'
        ]
      end

      def self.category
        :source_control
      end
    end
  end
end