<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceshare_your_story extends SectionDatasource{

		public $dsParamROOTELEMENT = 'share-your-story';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'introduction-copy: formatted',
				'how-it-works-copy: formatted',
				'share-your-story-copy: formatted'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Share Your Story',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://minors.localhost',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-06-25T19:25:18+00:00'
			);
		}

		public function getSource(){
			return '9';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
