<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcemenu_concepts extends SectionDatasource{

		public $dsParamROOTELEMENT = 'menu-concepts';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'date';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
                'id' => '{$ds-search}',
				'196' => 'yes',
				'9' => 'earlier than tomorrow',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'headline',
				'copy: formatted',
				'author',
				'date',
				'photo',
				'tags',
				'views',
                'menu-concept',
                'sticky'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Menu Concepts',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://flavormeansbusiness.dev',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2013-06-20T19:44:35+00:00'
			);
		}

		public function getSource(){
			return '2';
		}

		public function allowEditorToParse(){
			return false;
		}


        function grab(&$param_pool){
            // grab the data
            $result = parent::grab($param_pool);

            // make sure we're only seeing one entry (assumed to be specifically requested)
            $totalentries = $result->getChild(0)->getAttribute("total-entries");

            if ($totalentries == 1) {
                $entryid = $result->getChildByName("entry", 0)->getAttribute("id");
                $views = $result->getChildByName("entry", 0)->getChildByName("views", 0);
                if ($views) {
                    Symphony::Database()->fetch("UPDATE sym_entries_data_22 SET value=value + 1 WHERE entry_id = $entryid");
                }
                else {
                    Symphony::Database()->fetch("INSERT INTO sym_entries_data_22 (entry_id, value) VALUES ($entryid, 1)");
                }
            }

            return $result;
        }

	}
