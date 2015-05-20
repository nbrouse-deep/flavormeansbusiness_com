<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcestories_winner extends SectionDatasource{

		public $dsParamROOTELEMENT = 'stories-winner';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'id' => '73',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'system:pagination',
				'title',
				'subtitle',
				'first-name',
				'last-name',
				'operation-name',
				'address-1',
				'address-2',
				'address-3',
				'city',
				'state',
				'zip-code',
				'type-of-operation',
				'job-title',
				'email',
				'phone-number',
				'document',
				'video',
				'date-submitted',
				'finalist',
				'story: formatted',
				'story: unformatted'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Stories: Winner',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://flavormeansbusiness.dev',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-12-10T18:48:21+00:00'
			);
		}

		public function getSource(){
			return '10';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
