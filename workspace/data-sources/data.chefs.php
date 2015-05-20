<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcechefs extends SectionDatasource{

		public $dsParamROOTELEMENT = 'chefs';
		public $dsParamORDER = 'asc';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'name';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'id' => '{$ds-search}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'name',
				'short-name',
				'short-biography: formatted',
				'about: formatted',
				'biography-photo',
				'action-photo',
				'listed'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array('$ds-search');
		}

		public function about(){
			return array(
				'name' => 'Chefs',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://flavormeansbusiness.dev',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2013-06-25T17:34:10+00:00'
			);
		}

		public function getSource(){
			return '1';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
