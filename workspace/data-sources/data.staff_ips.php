<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcestaff_ips extends SectionDatasource{

		public $dsParamROOTELEMENT = 'staff-ips';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'address'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Staff IPs',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://flavormeansbusiness.com',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2013-08-16T22:13:59+00:00'
			);
		}

		public function getSource(){
			return '37';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
