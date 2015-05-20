<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcegluten_free_products extends SectionDatasource{

		public $dsParamROOTELEMENT = 'gluten-free-products';
		public $dsParamORDER = 'asc';
		public $dsParamGROUP = '245';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'name';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'name',
				'category',
				'image',
				'description: formatted'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Gluten Free Products',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://flavormeansbusiness.dev',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2014-03-03T18:01:39+00:00'
			);
		}

		public function getSource(){
			return '40';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
