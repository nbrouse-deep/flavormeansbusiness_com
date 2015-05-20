<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceblog extends SectionDatasource{

		public $dsParamROOTELEMENT = 'blog';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamPARAMOUTPUT = array(
				'author'
		);
		public $dsParamSORT = 'date';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
                'id' => '{$ds-search}',
				'9' => 'earlier than tomorrow',
                '196' => 'no',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'system:pagination',
				'headline',
				'copy: formatted',
				'author',
				'date',
				'photo',
                'tags',
                'views',
                'sticky'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Blog',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://minors.localhost',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-06-20T18:41:54+00:00'
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
