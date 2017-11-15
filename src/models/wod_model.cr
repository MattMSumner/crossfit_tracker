class Wod < BaseModel
  table :wods do
    field description : String
    field date : Time
  end
end
