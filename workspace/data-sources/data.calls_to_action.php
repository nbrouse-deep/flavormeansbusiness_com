<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcecalls_to_action extends SectionDatasource{

		public $dsParamROOTELEMENT = 'calls-to-action';
		public $dsParamORDER = 'asc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'copy: formatted',
				'image',
				'link-label',
				'link-url'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Calls to Action',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://flavormeansbusiness.dev',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2013-06-10T22:12:51+00:00'
			);
		}

		public function getSource(){
			return '28';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
