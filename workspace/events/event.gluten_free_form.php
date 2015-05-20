<?php

	require_once(TOOLKIT . '/class.event.php');

	Class eventgluten_free_form extends SectionEvent{

		public $ROOTELEMENT = 'gluten-free-form';

		public $eParamFILTERS = array(
			
		);

		public static function about(){
			return array(
				'name' => 'Gluten Free Form',
				'author' => array(
					'name' => 'Nathan Pratt',
					'website' => 'https://stag1.flavormeansbusiness.com',
					'email' => 'it@ozarksweb.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2015-02-02T23:03:25+00:00',
				'trigger-condition' => 'action[gluten-free-form]'
			);
		}

		public static function getSource(){
			return '41';
		}

		public static function allowEditorToParse(){
			return true;
		}

		public static function documentation(){
			return '
        <h3>Success and Failure XML Examples</h3>
        <p>When saved successfully, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;gluten-free-form result="success" type="create | edit">
  &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/gluten-free-form></code></pre>
        <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;gluten-free-form result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;field-name type="invalid | missing" />
  ...
&lt;/gluten-free-form></code></pre>
        <h3>Example Front-end Form Markup</h3>
        <p>This is an example of the form markup you can use on your frontend:</p>
        <pre class="XML"><code>&lt;form method="post" action="" enctype="multipart/form-data">
  &lt;input name="MAX_FILE_SIZE" type="hidden" value="2097152" />
  &lt;label>Name
    &lt;input name="fields[name]" type="text" />
  &lt;/label>
  &lt;label>Preferred Method of Contact
    &lt;input name="fields[preferred-method-of-contact]" type="text" />
  &lt;/label>
  &lt;label>Email Address
    &lt;input name="fields[email-address]" type="text" />
  &lt;/label>
  &lt;label>Phone
    &lt;input name="fields[phone]" type="text" />
  &lt;/label>
  &lt;label>Type of Operation
    &lt;input name="fields[type-of-operation]" type="text" />
  &lt;/label>
  &lt;label>Number of meals served every day
    &lt;input name="fields[number-of-meals-served-every-day]" type="text" />
  &lt;/label>
  &lt;label>Any other specific needs Minor\'s can help with?
    &lt;input name="fields[any-other-specific-needs-minors-can-help-with]" type="text" />
  &lt;/label>
  &lt;input name="action[gluten-free-form]" type="submit" value="Submit" />
&lt;/form></code></pre>
        <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
        <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
        <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
        <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="https://stag1.flavormeansbusiness.com/success/" /></code></pre>';
		}

		public function load(){
			if(isset($_POST['action']['gluten-free-form'])) return $this->__trigger();
		}

	}
