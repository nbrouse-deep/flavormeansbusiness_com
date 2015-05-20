<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceflavor_expedition_videos_content extends SectionDatasource{

		public $dsParamROOTELEMENT = 'flavor-expedition-videos-content';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'callout'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Flavor Expedition Videos Content',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://flavormeansbusiness.sugardesignstudio.com',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2013-06-25T15:20:09+00:00'
			);
		}

		public function getSource(){
			return '35';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
