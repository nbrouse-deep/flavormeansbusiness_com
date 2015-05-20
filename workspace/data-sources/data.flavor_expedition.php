<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceflavor_expedition extends SectionDatasource{

		public $dsParamROOTELEMENT = 'flavor-expedition';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'copy: formatted'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Flavor Expedition',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://flavormeansbusiness.sugardesignstudio.com',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2013-07-08T19:28:21+00:00'
			);
		}

		public function getSource(){
			return '36';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
