<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcefeatured_blog extends SectionDatasource{

		public $dsParamROOTELEMENT = 'featured-blog';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'id' => '{$ds-home-featured.featured-blog}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'headline',
				'copy: formatted',
				'author',
				'date',
				'photo'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array('$ds-home-featured.featured-blog');
		}

		public function about(){
			return array(
				'name' => 'Featured Blog',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://minors.localhost',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-06-27T14:19:35+00:00'
			);
		}

		public function getSource(){
			return '2';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
