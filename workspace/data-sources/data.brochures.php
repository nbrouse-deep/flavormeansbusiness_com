<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcebrochures extends SectionDatasource{

		public $dsParamROOTELEMENT = 'brochures';
		public $dsParamORDER = 'asc';
		public $dsParamGROUP = '166';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'category';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'name',
				'category',
				'pdf',
				'screenshot'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Brochures',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://flavormeansbusiness.dev',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2013-06-17T15:36:04+00:00'
			);
		}

		public function getSource(){
			return '29';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
