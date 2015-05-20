<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcelatin_flavors extends SectionDatasource{

		public $dsParamROOTELEMENT = 'latin-flavors';
		public $dsParamORDER = 'asc';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'name';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'name',
				'link',
				'gtin-upc-code',
				'pack-size',
				'allergens',
				'description: formatted',
				'image',
				'gluten-free',
				'vegetarian',
				'new'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Latin Flavors',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://flavormeansbusiness.dev',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2014-02-27T19:40:59+00:00'
			);
		}

		public function getSource(){
			return '32';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
