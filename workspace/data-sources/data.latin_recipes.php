<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcelatin_recipes extends SectionDatasource{

		public $dsParamROOTELEMENT = 'latin-recipes';
		public $dsParamORDER = 'asc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '100';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'latin-recipe-title';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'latin-recipe-title',
				'latin-recipe-image',
				'latin-recipe-pdf'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Latin Recipes',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'https://stag1.flavormeansbusiness.com',
					'email' => 'nathan@sugards.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2015-05-12T14:24:25+00:00'
			);
		}

		public function getSource(){
			return '42';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
