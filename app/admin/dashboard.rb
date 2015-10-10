ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content

  content do
    para "Ultimos usuarios registrados"
    table_for User.order("created_at desc").limit(5) do
        column "Nombre", :no_user
        column "Correo", :no_correo
        column "Registrado", :created_at
    end
    strong { link_to "Ver usuarios", admin_users_path}

    para "Ultimos servicios solicitados"
    table_for Service.order("created_at desc").limit(5) do
        column "Dia", :fe_fecha
        column "Hora", :fe_hora
        column "Usuario", :user_id
        column "Estado", :status_id
        column "Registrado", :created_at
    end
    strong { link_to "Ver servicios", admin_services_path}

    para "Ultimos choferes registrados"
    table_for Driver.order("created_at desc").limit(5) do
        column "Nombre", :no_driver
        column "Correo", :no_correo
        column "Telefono", :nu_telefono
        column "Registrado", :created_at
    end
    strong { link_to "Ver choferes", admin_drivers_path}
  end
end
