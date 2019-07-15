def nyc_pigeon_organizer(pigeon_data)
  final_pigeon_hash = {}
  array_of_pigeons = []
  pigeon_data.map do |metadata_color_gender_lives, intricate_variable_info|
    intricate_variable_info.map do |intricate_variable, pigeon_names|
      pigeon_names.map do |name|
        if !array_of_pigeons.include?(name)
        array_of_pigeons << name
      end
      end
    end
  end

  array_of_pigeons.map do |individual_name|
    final_pigeon_hash[individual_name] = Hash.new {|attribute, quality| attribute[quality] =[]}
    pigeon_data.map do |metadata_color_gender_lives, intricate_variable_info|
      final_pigeon_hash[individual_name][metadata_color_gender_lives]
      intricate_variable_info.map do |intricate_variable, pigeon_names|
        pigeon_names.map do |names|
          if names == individual_name
            final_pigeon_hash[individual_name][metadata_color_gender_lives] << intricate_variable.to_s
          end
        end
      end
    end
  end
final_pigeon_hash
end
