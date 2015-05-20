<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcefeatured_menu_concept extends SectionDatasource{

		public $dsParamROOTELEMENT = 'featured-menu-concept';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'id' => '{$ds-home-featured.featured-menu-concept}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'headline',
				'copy: formatted',
				'author',
				'date',
				'photo',
				'tags',
				'views',
				'menu-concept'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array('$ds-home-featured.featured-menu-concept');
		}

		public function about(){
			return array(
				'name' => 'Featured Menu Concept',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://flavormeansbusiness.dev',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2013-06-19T22:28:24+00:00'
			);
		}

		public function getSource(){
			return '2';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
