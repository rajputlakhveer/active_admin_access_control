ActiveAdmin.register Permission do
  permit_params :role_id, :class_name, :state, :action

  menu parent: "Roles & Permissions"
  
  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs do
      f.input :role_id, as: :select, collection: Role.all.map { |r| [r.name, r.id] }
      f.input :class_name, as: :select, collection: ActiveAdmin.application.namespaces[:admin].resources.map { |resource| resource.resource_name.to_s }
      f.input :state
      f.input :action, as: :select, collection: [ "read", "manage", "create", "update", "destroy"]
    end
    f.actions
  end
end
