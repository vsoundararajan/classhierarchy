To install this gem download this gem file.

  $ gem install path/to/allvehicles-1.0.0.gem

Once installed from command line
  $ vehicles_demo

This runs vehicles_demo.rb file on bin folder

From irb:

   require 'allvehicles/car'
   c = Allvehicles::Car.new(5, "Acura", "Mdx")
   c.weapons?

   require 'allvehicles/plane'
   p = Allvehicles::Plane.new(5, "Lockheed Martin", "B52 Bomber")
   p.has_weapons

.  
├── LICENSE
├── README.md
├── allvehicles-1.0.0.gem
├── allvehicles.gemspec
├── bin
│   └── vehicles_demo
├── lib
│   └── allvehicles
│       ├── aircraft.rb
│       ├── car.rb
│       ├── electric_car.rb
│       ├── electric_motorcycle.rb
│       ├── electric_tank.rb
│       ├── helicopter.rb
│       ├── locomotive.rb
│       ├── motorcycle.rb
│       ├── person.rb
│       ├── plane.rb
│       ├── quadcopter.rb
│       ├── tank.rb
│       ├── vehicle.rb
│       └── vehicles_collection.rb
└── spec
    ├── allvehicles
    │   ├── aircraft_spec.rb
    │   ├── car_spec.rb
    │   ├── electric_car_spec.rb
    │   ├── electric_motorcycle_spec.rb
    │   ├── electric_tank_spec.rb
    │   ├── helicopter_spec.rb
    │   ├── motorcycle_spec.rb
    │   ├── person_spec.rb
    │   ├── plane_spec.rb
    │   ├── quadcpopter_spec.rb
    │   └── tank_spec.rb
    └── spec_helper.rb