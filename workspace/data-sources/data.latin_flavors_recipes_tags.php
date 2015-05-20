<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcelatin_flavors_recipes_tags extends SectionDatasource{

		public $dsParamROOTELEMENT = 'latin-flavors-recipes-tags';
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
				'name' => 'Latin Flavors Recipes: Tags',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://flavormeansbusiness.dev',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2013-06-18T20:52:14+00:00'
			);
		}

		public function getSource(){
			return '31';
		}

		public function allowEditorToParse(){
			return false;
		}


		public function grab(&$param_pool=NULL){
			$result = new XMLElement($this->dsParamROOTELEMENT);

            $tags = Symphony::Database()->fetch("select count(handle) as count, handle, value from sym_entries_data_181 group by handle");

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
