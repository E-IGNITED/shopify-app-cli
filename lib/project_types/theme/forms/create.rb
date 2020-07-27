module Theme
  module Forms
    class Create < ShopifyCli::Form
      attr_accessor :name
      flag_arguments :title, :password, :store

      def ask
        self.store ||= CLI::UI::Prompt.ask(ctx.message('theme.forms.create.ask_store'))
        ctx.puts(ctx.message('theme.forms.create.private_app', self.store))
        self.password ||= CLI::UI::Prompt.ask(ctx.message('theme.forms.create.ask_password'))
        self.title ||= CLI::UI::Prompt.ask(ctx.message('theme.forms.create.ask_title'))
        self.name = self.title.downcase.split(" ").join("_")
      end
    end
  end
end
