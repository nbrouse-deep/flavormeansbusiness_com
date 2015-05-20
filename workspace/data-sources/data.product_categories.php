<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceproduct_categories extends SectionDatasource{

		public $dsParamROOTELEMENT = 'product-categories';
		public $dsParamORDER = 'asc';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'order';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'id' => '{$ds-search}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'name',
				'copy: formatted',
				'products',
				'parent-category',
				'main-image',
				'main-image-caption',
				'product-image'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array('$ds-search');
		}

		public function about(){
			return array(
				'name' => 'Product Categories',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://flavormeansbusiness.dev',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2013-06-26T17:35:26+00:00'
			);
		}

		public function getSource(){
			return '30';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
