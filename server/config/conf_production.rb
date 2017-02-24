Mail.defaults do
  delivery_method :smtp, :address => 'localhost',
  :port => 1025
end

DATA_SOURCE = 'mysql://wmsuser:SalvatorDali01@localhost/wmstools'
PORT = 80
PERFORMANCE_TEST_RESULTS_PER_PAGE = 30

TITANIUM_TRUNK_REGRESSION_TESTS_JOB = {
  :cron => '30 4 * * *',
  :suites_environments =>
  [
  {:suite => '[TIT] OBJECT EDITOR', :environment => 'TI_AUTO'},
  {:suite => '[TIT] ATTRIBUTE SEARCH', :environment => 'TI_AUTO'},
  {:suite => '[TIT] QUICK SEARCH', :environment => 'TI_AUTO'},
  {:suite => '[TIT] EXPLORER', :environment => 'TI_AUTO'},
  {:suite => '[TIT] ACCESS RIGHTS', :environment => 'TI_AUTO'},
  {:suite => '[TIT] DIGITIZING', :environment => 'TI_AUTO'},
  {:suite => '[TIT] IDENTIFY SETTINGS', :environment => 'TI_AUTO'},
  {:suite => '[TIT] RELAY EDITOR', :environment => 'TI_AUTO'},
  {:suite => '[TIT] EARTHING MEASUREMENT EDITOR', :environment => 'TI_AUTO'},
  {:suite => '[TIT] PIPES', :environment => 'TI_AUTO'},
  {:suite => '[TIT] USER MANAGEMENT', :environment => 'TI_AUTO'},
  {:suite => '[TIT] MAP EXPORT', :environment => 'TI_AUTO'}, 
  {:suite => '[TIT] CATALOGUES', :environment => 'TI_AUTO'}, 
  {:suite => '[TIT] NETWORK CALCULATIONS', :environment => 'TI_AUTO'},
  {:suite => '[TIT] VEGETATION CLEARING', :environment => 'TI_AUTO'},
  {:suite => '[TIT] MAINTENANCE HISTORY', :environment => 'TI_AUTO'},  
  {:suite => '[TIT] OTHER', :environment => 'TI_AUTO'},    
    ]
}

# everything below this should be the same for both production and development

TEST_SUITES = [
  {:name => '[TIT] OBJECT EDITOR', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] ATTRIBUTE SEARCH', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] QUICK SEARCH', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] EXPLORER', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] ACCESS RIGHTS', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] DIGITIZING', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'}, 
  {:name => '[TIT] IDENTIFY SETTINGS', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] RELAY EDITOR', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] EARTHING MEASUREMENT EDITOR', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] PIPES', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] USER MANAGEMENT', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] MAP EXPORT', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] CATALOGUES', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] NETWORK CALCULATIONS', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] VEGETATION CLEARING', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},    
  {:name => '[TIT] MAINTENANCE HISTORY', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},    
  {:name => '[TIT] OTHER', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},    
     
      ]

TEST_PACKAGES = [
  {:name => 'FULL REGRESSION TEST',
  :suites => [
  '[TIT] OBJECT EDITOR',
  '[TIT] ATTRIBUTE SEARCH',
  '[TIT] QUICK SEARCH',
  '[TIT] EXPLORER',
  '[TIT] ACCESS RIGHTS',
  '[TIT] DIGITIZING',
  '[TIT] IDENTIFY SETTINGS',
  '[TIT] RELAY EDITOR',
  '[TIT] EARTHING MEASUREMENT EDITOR',
  '[TIT] PIPES',
  '[TIT] USER MANAGEMENT',
  '[TIT] MAP EXPORT',
  '[TIT] CATALOGUES',
  '[TIT] NETWORK CALCULATIONS',
  '[TIT] VEGETATION CLEARING',
  '[TIT] MAINTENANCE HISTORY',
  '[TIT] OTHER',  
   ]
  },
  {:name => '[TIT] OBJECT EDITOR',
  :suites => ['[TIT] OBJECT EDITOR'
  ]
  },
  {:name => '[TIT] ATTRIBUTE SEARCH',
  :suites => ['[TIT] ATTRIBUTE SEARCH'
  ]
  },
  {:name => '[TIT] QUICK SEARCH',
  :suites => ['[TIT] QUICK SEARCH'
  ]
  },
  {:name => '[TIT] EXPLORER',
  :suites => ['[TIT] EXPLORER'
  ]
  },
  {:name => '[TIT] ACCESS RIGHTS',
  :suites => ['[TIT] ACCESS RIGHTS'
  ]
  },
  {:name => '[TIT] DIGITIZING',
  :suites => ['[TIT] DIGITIZING'
  ]
  },
  {:name => '[TIT] IDENTIFY SETTINGS',
  :suites => ['[TIT] IDENTIFY SETTINGS'
  ]
  },
  {:name => '[TIT] RELAY EDITOR',
  :suites => ['[TIT] RELAY EDITOR'
  ]
  },
  {:name => '[TIT] EARTHING MEASUREMENT EDITOR',
  :suites => ['[TIT] EARTHING MEASUREMENT EDITOR'
  ]
  },
  {:name => '[TIT] PIPES',
  :suites => ['[TIT] PIPES'
  ]
  }, 
  {:name => '[TIT] USER MANAGEMENT',
   :suites => ['[TIT] USER MANAGEMENT'
  ]
  },
  {:name => '[TIT] MAP EXPORT',
  :suites => ['[TIT] MAP EXPORT'
  ]
  },
  {:name => '[TIT] CATALOGUES',
  :suites => ['[TIT] CATALOGUES'
  ]
  },
  {:name => '[TIT] NETWORK CALCULATIONS',
  :suites => ['[TIT] NETWORK CALCULATIONS'
  ]
  },
  {:name => '[TIT] VEGETATION CLEARING',
  :suites => ['[TIT] VEGETATION CLEARING'
  ]
  },
  {:name => '[TIT] MAINTENANCE HISTORY',
  :suites => ['[TIT] MAINTENANCE HISTORY'
  ]
  },    
  {:name => '[TIT] OTHER',
  :suites => ['[TIT] OTHER'
  ]
  },
]

PERFORMANCE_TESTS = []

PIAZZA_SCREENS = [
  {:screen_number => 1, :environments => ['TI_AUTO']},
]

DELIVERY_SITE_TYPES = []

ENVIRONMENTS = [
  {:name => 'TI_AUTO', :wms_version => 'trunk'},
]
