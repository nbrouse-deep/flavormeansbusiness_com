<?php

	require_once(TOOLKIT . '/class.event.php');

	Class eventworlds_of_flavor_contest_new extends SectionEvent{

		public $ROOTELEMENT = 'worlds-of-flavor-contest-new';

		public $eParamFILTERS = array(
			'xss-fail'
		);

		public static function about(){
			return array(
				'name' => 'Worlds of Flavor Contest: New',
				'author' => array(
					'name' => 'sugar design studio',
					'website' => 'http://flavormeansbusiness.dev',
					'email' => 'adam@sugards.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2013-03-05T19:25:05+00:00',
				'trigger-condition' => 'action[worlds-of-flavor-contest-new]'
			);
		}

		public static function getSource(){
			return '20';
		}

		public static function allowEditorToParse(){
			return true;
		}

		public static function documentation(){
			return '
        <h3>Success and Failure XML Examples</h3>
        <p>When saved successfully, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;worlds-of-flavor-contest-new result="success" type="create | edit">
  &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/worlds-of-flavor-contest-new></code></pre>
        <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;worlds-of-flavor-contest-new result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;field-name type="invalid | missing" />
  ...
&lt;/worlds-of-flavor-contest-new></code></pre>
        <p>The following is an example of what is returned if any options return an error:</p>
        <pre class="XML"><code>&lt;worlds-of-flavor-contest-new result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;filter name="admin-only" status="failed" />
  &lt;filter name="send-email" status="failed">Recipient not found&lt;/filter>
  ...
&lt;/worlds-of-flavor-contest-new></code></pre>
        <h3>Example Front-end Form Markup</h3>
        <p>This is an example of the form markup you can use on your frontend:</p>
        <pre class="XML"><code>&lt;form method="post" action="" enctype="multipart/form-data">
  &lt;input name="MAX_FILE_SIZE" type="hidden" value="20971520" />
  &lt;label>First Name
    &lt;input name="fields[first-name]" type="text" />
  &lt;/label>
  &lt;label>Last Name
    &lt;input name="fields[last-name]" type="text" />
  &lt;/label>
  &lt;label>Operation Name
    &lt;input name="fields[operation-name]" type="text" />
  &lt;/label>
  &lt;label>Operation Address 1
    &lt;input name="fields[operation-address-1]" type="text" />
  &lt;/label>
  &lt;label>Operation Address 2
    &lt;input name="fields[operation-address-2]" type="text" />
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
  &lt;label>Email Address
    &lt;input name="fields[email-address]" type="text" />
  &lt;/label>
  &lt;label>Phone Number
    &lt;input name="fields[phone-number]" type="text" />
  &lt;/label>
  &lt;label>Example
    &lt;textarea name="fields[example]" rows="15" cols="50">&lt;/textarea>
  &lt;/label>
  &lt;label>Agreed to Rules
    &lt;input name="fields[agreed-to-rules]" type="text" />
  &lt;/label>
  &lt;input name="action[worlds-of-flavor-contest-new]" type="submit" value="Submit" />
&lt;/form></code></pre>
        <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
        <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
        <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
        <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://flavormeansbusiness.dev/success/" /></code></pre>';
		}

		public function load(){
			if(isset($_POST['action']['worlds-of-flavor-contest-new'])) return $this->__trigger();
		}

	}
