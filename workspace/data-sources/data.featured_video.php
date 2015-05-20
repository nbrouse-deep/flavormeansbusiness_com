<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcefeatured_video extends SectionDatasource{

		public $dsParamROOTELEMENT = 'featured-video';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'id' => '{$ds-home-featured.featured-video}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'subtitle',
				'description: formatted',
				'byline',
				'vimeo-url',
				'poster-image',
				'date'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array('$ds-home-featured.featured-video');
		}

		public function about(){
			return array(
				'name' => 'Featured Video',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://flavormeansbusiness.dev',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2013-06-10T20:31:45+00:00'
			);
		}

		public function getSource(){
			return '3';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
