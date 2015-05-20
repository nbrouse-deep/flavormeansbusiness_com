<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcesample_options extends SectionDatasource{

		public $dsParamROOTELEMENT = 'sample-options';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'sample',
				'image'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Sample Options',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://flavormeansbusiness.com',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2013-04-10T21:03:03+00:00'
			);
		}

		public function getSource(){
			return '26';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
