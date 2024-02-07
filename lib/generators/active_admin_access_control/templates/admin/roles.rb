ActiveAdmin.register Role do 
  permit_params :name

  menu parent: "Roles & Permissions"
end