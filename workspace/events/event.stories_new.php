<?php

	require_once(TOOLKIT . '/class.event.php');

	Class eventstories_new extends SectionEvent{

		public $ROOTELEMENT = 'stories-new';

		public $eParamFILTERS = array(
			'xss-fail'
		);

		public static function about(){
			return array(
				'name' => 'Stories: New',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://minors.localhost',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-06-25T20:32:38+00:00',
				'trigger-condition' => 'action[stories-new]'
			);
		}

		public static function getSource(){
			return '10';
		}

		public static function allowEditorToParse(){
			return true;
		}

		public static function documentation(){
			return '
        <h3>Success and Failure XML Examples</h3>
        <p>When saved successfully, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;stories-new result="success" type="create | edit">
  &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/stories-new></code></pre>
        <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;stories-new result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;field-name type="invalid | missing" />
  ...
&lt;/stories-new></code></pre>
        <p>The following is an example of what is returned if any options return an error:</p>
        <pre class="XML"><code>&lt;stories-new result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;filter name="admin-only" status="failed" />
  &lt;filter name="send-email" status="failed">Recipient not found&lt;/filter>
  ...
&lt;/stories-new></code></pre>
        <h3>Example Front-end Form Markup</h3>
        <p>This is an example of the form markup you can use on your frontend:</p>
        <pre class="XML"><code>&lt;form method="post" action="" enctype="multipart/form-data">
  &lt;input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
  &lt;label>Title
    &lt;input name="fields[title]" type="text" />
  &lt;/label>
  &lt;label>Document
    &lt;input name="fields[document]" type="file" />
  &lt;/label>
  &lt;label>Video
    &lt;input name="fields[video]" type="file" />
  &lt;/label>
  &lt;label>First Name
    &lt;input name="fields[first-name]" type="text" />
  &lt;/label>
  &lt;label>Last Name
    &lt;input name="fields[last-name]" type="text" />
  &lt;/label>
  &lt;label>Operation Name
    &lt;input name="fields[operation-name]" type="text" />
  &lt;/label>
  &lt;label>Address 1
    &lt;input name="fields[address-1]" type="text" />
  &lt;/label>
  &lt;label>Address 2
    &lt;input name="fields[address-2]" type="text" />
  &lt;/label>
  &lt;label>Address 3
    &lt;input name="fields[address-3]" type="text" />
  &lt;/label>
  &lt;label>City
    &lt;input name="fields[city]" type="text" />
  &lt;/label>
  &lt;label>State
    &lt;input name="fields[state]" type="text" />
  &lt;/label>
  &lt;label>Zip Code
    &lt;input name="fields[zip-code]" type="text" />
  &lt;/label>
  &lt;label>Type of Operation
    &lt;input name="fields[type-of-operation]" type="text" />
  &lt;/label>
  &lt;label>Job Title
    &lt;input name="fields[job-title]" type="text" />
  &lt;/label>
  &lt;label>Email
    &lt;input name="fields[email]" type="text" />
  &lt;/label>
  &lt;label>Phone Number
    &lt;input name="fields[phone-number]" type="text" />
  &lt;/label>
  &lt;input name="action[stories-new]" type="submit" value="Submit" />
&lt;/form></code></pre>
        <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
        <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
        <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
        <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://minors.localhost/success/" /></code></pre>';
		}

		public function load(){
			if(isset($_POST['action']['stories-new'])) return $this->__trigger();
		}

	}
