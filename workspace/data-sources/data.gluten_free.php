<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcegluten_free extends SectionDatasource{

		public $dsParamROOTELEMENT = 'gluten-free';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Gluten Free',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'https://stag1.flavormeansbusiness.com',
					'email' => 'nathan@sugards.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2015-02-11T15:08:51+00:00'
			);
		}

		public function getSource(){
			return '41';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
