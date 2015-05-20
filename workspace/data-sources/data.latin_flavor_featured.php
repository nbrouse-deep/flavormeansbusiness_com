<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcelatin_flavor_featured extends SectionDatasource{

		public $dsParamROOTELEMENT = 'latin-flavor-featured';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'latin-flavor-featured-title',
				'latin-flavor-featured-description',
				'latin-flavor-featured-image',
				'latin-flavor-featured-pdf'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Latin Flavor Featured',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'https://stag1.flavormeansbusiness.com',
					'email' => 'nathan@sugards.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2015-05-11T17:51:42+00:00'
			);
		}

		public function getSource(){
			return '43';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
