<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcemenu_concepts_tags extends SectionDatasource{

		public $dsParamROOTELEMENT = 'menu-concepts-tags';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Menu Concepts: Tags',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://flavormeansbusiness.dev',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2013-06-21T15:35:04+00:00'
			);
		}

		public function getSource(){
			return '2';
		}

		public function allowEditorToParse(){
			return false;
		}


		public function grab(&$param_pool=NULL){
			$result = new XMLElement($this->dsParamROOTELEMENT);

            $tags = Symphony::Database()->fetch("select distinct tags.handle, tags.value from sym_entries_data_196 as posts left join sym_entries_data_12 as tags on posts.entry_id=tags.entry_id where posts.value='yes' order by tags.value;");


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

