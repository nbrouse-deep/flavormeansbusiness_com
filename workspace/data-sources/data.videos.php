<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcevideos extends SectionDatasource{

		public $dsParamROOTELEMENT = 'videos';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '100';
		public $dsParamSTARTPAGE = '{$url-p}';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamPARAMOUTPUT = array(
				'author'
		);
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
                'id' => '{$ds-search}',
				'13' => '{$video}',
				'16' => 'earlier than tomorrow',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'system:pagination',
				'title',
				'description: formatted',
				'vimeo-url',
                'poster-image',
                'views',
                'byline'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Videos',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://minors.localhost',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-06-20T21:19:49+00:00'
			);
		}

		public function getSource(){
			return '3';
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
                    Symphony::Database()->fetch("UPDATE sym_entries_data_65 SET value=value + 1 WHERE entry_id = $entryid");
                }
                else {
                    Symphony::Database()->fetch("INSERT INTO sym_entries_data_65 (entry_id, value) VALUES ($entryid, 1)");
                }
            }

            return $result;
        }
	}
