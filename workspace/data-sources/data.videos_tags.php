<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcevideos_tags extends SectionDatasource{

		public $dsParamROOTELEMENT = 'videos-tags';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'tags'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Videos: Tags',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://minors.localhost',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-06-20T18:51:44+00:00'
			);
		}

		public function getSource(){
			return '3';
		}

		public function allowEditorToParse(){
			return false;
		}


		public function grab(&$param_pool=NULL){
			$result = new XMLElement($this->dsParamROOTELEMENT);

            $tags = Symphony::Database()->fetch("select count(handle) as count, handle, value from sym_entries_data_17 group by handle");

            foreach ($tags as $tag) {
                if ($tag["value"] != '') {
                    $tag_node = new XMLElement("tag", $tag["value"]);
                    $tag_node->setAttributeArray(array("handle" => $tag["handle"], "count" => $tag["count"]));
                    $result->appendChild($tag_node);
                }
            }

			return $result;
		}

	}
