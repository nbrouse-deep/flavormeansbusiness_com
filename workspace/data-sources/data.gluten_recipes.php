<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcegluten_recipes extends SectionDatasource{

		public $dsParamROOTELEMENT = 'gluten-recipes';
		public $dsParamORDER = 'asc';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '900';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'gluten-recipe-title',
				'gluten-recipe-image',
				'gluten-recipe-pdf'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Gluten Recipes',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'https://stag1.flavormeansbusiness.com',
					'email' => 'nathan@sugards.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2015-05-19T18:55:51+00:00'
			);
		}

		public function getSource(){
			return '44';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
