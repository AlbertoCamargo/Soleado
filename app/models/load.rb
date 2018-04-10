class Load < ActiveRecord::Base
  belongs_to :user
  LOAD_OPTIONS = [['Air Conditioner', 'air_conditioner'], ['Air ioniser', 'air_ioniser'],
                  ['Air purifier', 'air_purifier'], ['Aroma lamp', 'aroma_lamp'], ['Atic fan', 'atic_fan'],
                  ['Bachelor griller', 'bachelor_griller'], ['Beverage opener', 'beverage_opener'],
                  ['Blender', 'blender'], ['Ceiling fan', 'ceiling_fan'],
                  ['Central vacuum cleaner', 'central_vacuum_cleaner'], ['Clothes dyer', 'clothes_dyer'],
                  ['Clothes iron', 'clothes_iron'], ['Cold-pressed juicer', 'cold_pressed_juicer'],
                  ['Combo washer dryer', 'combo_washer_dryer'], ['Dishwasher', 'dishwasher'],
                  ['Domestic robot', 'domestic_robot'], ['Water boiler', 'water_boiler'], ['Exhaust hood', 'exthaust_hood'],
                  ['Fan heater', 'fan_heater'], ['Forced-air', 'forced_air'], ['Futon dryer', 'futon_dryer'],
                  ['Garbage disposal unit', 'garbage_disposal_unit'], ['Hair dryer', 'hair_dryer'], ['Hair iron', 'hair_iron'],
                  ['Home server', 'home_server'], ['Humidifier', 'humidifier'], ['HVAC', 'hvac'], ['Kimchi refrigerator', 'kimchi_refrigerator'],
                  ['Mangle', 'mangle'], ['Micathermic heater', 'micathermic_heater'], ['Oil heater', 'oil_heater'], ['Oven', 'oven'],
                  ['Electrical heater', 'electrical_heater'], ['Paper shredder', 'paper_shredder'], ['Refrigerator', 'refrigerator'],
                  ['Sewing machine', 'sewing_machine'], ['Space heater', 'space_heater'], ['Steam mop', 'steam_mop'],
                  ['Sump pump', 'sump_pump'], ['Television', 'television'], ['Toaster', 'toaster'], ['Trouser press', 'trouser_press'],
                  ['Vacuum cleaner', 'vacuum_cleaner'], ['Washing machine', 'washing_machine'], ['Water purifier', 'water purifier'],
                  ['Water heater', 'water_heater'], ['Window fan', 'window_fan'], ['Light bulb', 'light_bulb']
                ]

  validates_inclusion_of :type_of_load, in: LOAD_OPTIONS.collect{ |l| l[1] }
end
