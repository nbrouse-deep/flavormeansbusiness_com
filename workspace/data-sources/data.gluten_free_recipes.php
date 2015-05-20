<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcegluten_free_recipes extends SectionDatasource{

		public $dsParamROOTELEMENT = 'gluten-free-recipes';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'name',
				'products',
				'recipe-url',
				'image',
				'daypart'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Gluten Free Recipes',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'https://stag1.flavormeansbusiness.com',
					'email' => 'nathan@sugards.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2015-04-08T18:49:11+00:00'
			);
		}

		public function getSource(){
			return '39';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
