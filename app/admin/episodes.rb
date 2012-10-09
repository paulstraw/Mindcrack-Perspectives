ActiveAdmin.register Episode do
  form do |f|
    f.inputs do
      f.input :series, as: :select
      f.input :title

      f.has_many :perspectives do |p|
        p.input :user
        p.input :video_id
        p.input :start_offset
      end
    end

    f.buttons
  end

  index do
    column :id
    column :series
    column :title
    column :created_at
    column :updated_at
    default_actions
  end
end