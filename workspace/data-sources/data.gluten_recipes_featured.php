<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcegluten_recipes_featured extends SectionDatasource{

		public $dsParamROOTELEMENT = 'gluten-recipes-featured';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '1';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'gluten-recipe-featured-title',
				'gluten-recipe-featured-description',
				'gluten-recipe-featured-image',
				'gluten-recipe-featured-pdf'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Gluten Recipes Featured',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'https://stag1.flavormeansbusiness.com',
					'email' => 'nathan@sugards.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2015-05-19T19:07:12+00:00'
			);
		}

		public function getSource(){
			return '45';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
