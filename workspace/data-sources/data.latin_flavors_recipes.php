<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcelatin_flavors_recipes extends SectionDatasource{

		public $dsParamROOTELEMENT = 'latin-flavors-recipes';
		public $dsParamORDER = 'asc';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'name';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'name',
				'extra',
				'product',
				'daypart',
				'categories',
				'recipe-url',
				'menu-concept-url',
				'photo',
				'gluten-free',
				'vegetarian'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Latin Flavors Recipes',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://flavormeansbusiness.sugardesignstudio.com',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2013-06-27T02:13:16+00:00'
			);
		}

		public function getSource(){
			return '31';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
