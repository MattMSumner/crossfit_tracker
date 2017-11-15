class CreateWods::V20171113141257 < LuckyMigrator::Migration::V1
  def migrate
    create :wods do
      add description : String
      add date : Time
    end

    execute "CREATE UNIQUE INDEX wods_date_index ON wods (date);"
  end

  def rollback
    drop :wods
  end
end
