ActiveAdmin.register Message do
  menu label: 'Nachrichten Schwarzes Brett'

  permit_params :title, :description, :date, :important
end
