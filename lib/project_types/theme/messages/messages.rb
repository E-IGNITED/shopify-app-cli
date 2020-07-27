# frozen_string_literal: true
module Theme
  module Messages
    MESSAGES = {
      theme: {
        create: {
          creating_theme: "Creating theme %s",
          checking_themekit: "Verifying Themekit",
        },
        ensure_themekit_installed: {
          downloading: "Downloading Themekit %s",
          failed: "Download failed",
          successful: "Themekit installed successfully",
          unsuccessful: "Unable to verify download digest",
          verifying: "Verifying download...",
        },
        forms: {
          create: {
            ask_password: "Password",
            ask_store: "Store domain: ",
            ask_title: "Title",
            private_app: <<~APP,
              To create a new theme, we need to connect with a private app. Visit {{underline:%s/admin/apps/private}} to fetch the password.
              If you create a new private app, ensure that it has Read and Write Theme access.",
            APP
          },
        },
      },
    }.freeze
  end
end
