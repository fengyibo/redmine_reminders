link_to_new_reminder = %(
    <% content_for :header_tags do %>
      <%= stylesheet_link_tag "reminders", :plugin => "redmine_reminders" %>
    <% end %>
    <%= link_to l(:label_reminder_add), new_reminder_path(:back_url => my_page_path),
                :class => "icon icon-reminder",
                :id => "new-reminder" if User.current.allowed_to?(:manage_reminders, nil, :global => true) %>
  )


Deface::Override.new :virtual_path  => "my/page",
                     :name          => "add-new-reminder-link-to-my-page",
                     :original      => "bc6ae6262eef79aab70c151bfacde1eb8e66512f",
                     :insert_top    => "div.contextual",
                     :text          => link_to_new_reminder
Deface::Override.new :virtual_path  => "my/custom_page",
                     :name          => "add-new-reminder-link-to-my-custom-page",
                     :original      => "bc6ae6262eef79aab70c151bfacde1eb8e66512f",
                     :insert_top    => "div.contextual",
                     :text          => link_to_new_reminder

Deface::Override.new :virtual_path  => "my/page",
                     :name          => "add-visible-reminders-on-my-page",
                     :original      => "78c1f1aeece8df938d731e6cc8561d73839a508b",
                     :insert_top    => "div#list-right",
                     :partial       => "reminders/boxes"
Deface::Override.new :virtual_path  => "my/custom_page",
                     :name          => "add-visible-reminders-on-my-custom-page",
                     :original      => "78c1f1aeece8df938d731e6cc8561d73839a508b",
                     :insert_top    => "div#list-right",
                     :partial       => "reminders/boxes"
