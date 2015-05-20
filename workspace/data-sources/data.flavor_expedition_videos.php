<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceflavor_expedition_videos extends SectionDatasource{

		public $dsParamROOTELEMENT = 'flavor-expedition-videos';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'date';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'headline',
				'vimeo-url',
				'description: formatted',
				'image',
				'recipe-link',
				'sidebar-caption',
				'date'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Flavor Expedition Videos',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://flavormeansbusiness.sugardesignstudio.com',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2013-06-25T14:40:36+00:00'
			);
		}

		public function getSource(){
			return '34';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
