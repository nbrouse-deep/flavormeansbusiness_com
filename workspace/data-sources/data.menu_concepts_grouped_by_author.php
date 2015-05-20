<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcemenu_concepts_grouped_by_author extends SectionDatasource{

		public $dsParamROOTELEMENT = 'menu-concepts-grouped-by-author';
		public $dsParamORDER = 'desc';
		public $dsParamGROUP = '8';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'date';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'9' => 'earlier than tomorrow',
				'196' => 'yes',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'headline'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Menu Concepts: Grouped by Author',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://flavormeansbusiness.dev',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2013-06-21T19:45:53+00:00'
			);
		}

		public function getSource(){
			return '2';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
