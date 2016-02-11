
  def match(indentifier_list)
    indentifier_list.each do |identifiers|
      column, column_type = identifiers.split('.')[0], identifiers.split('.')[1]
      active_records_resource.each do |resource|
        p 'resource'
        p resource
        p 'column'
        p column
        p 'column_type'
        p column_type
      end
    end
  end

  def create_schema(identifiers)
    table_name = identifiers.split(' ').delete_at(0)
    columns = match(expand(identifiers.split(' ')))
  end


  # TODO: reminder to sanitize. IMPORTANT! #
  def sanitize(args = '')
    args
  end

  def expand(abbrv)
    abbrv.each do ||

    end
  end

  def active_records_resource
    ['t.string','t.integer','t.boolean','t.text','t.timestamps']
  end


  task :migration_quick_connect do
    schema = create_schema(sanitize(ENV["MIGRATION_FLAGS"]))
    file_hooks = File.open("db/migrate/20160211024823_create_employees_table.rb", 'a+')
    file_hooks.each_with_index  do |hook, index|
      p 'hook'
      p hook
      p 'index'
      p index
    end
  end

  #
  # task :groom_myself do
  #   root =  `pwd`
  #   `touch thiswasmadefrom.rb`
  #   `echo 'hello task rake' >> thiswasmadefrom.rb`
  # end
  #
  # task :make_coffee do
  #   cups = ENV["COFFEE_CUPS"] || 2
  #   puts "Made #{cups} cups of coffee. Shakes are gone."
  # end
  #
  # task :walk_dog do
  #   puts "Dog walked."
  # end
  #
  # task :ready_for_the_day => [:turn_off_alarm, :groom_myself, :make_coffee, :walk_dog] do
  #   puts "Ready for the day!"
  # end