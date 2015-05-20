<?php
//==>>>==>>>==>>>==>>>==>>>==>>>==>>>==>>>==>>>==>>>==>>>==>>>==>>>
//
// Ajax Poll DX v1.01
// Copyright (c) phpkobo.com ( http://www.phpkobo.com/ )
// Email : admin@phpkobo.com
// ID : PX201-101
//
// This software is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; version 2 of the
// License.
//
// [Installation Guide]
// http://www.phpkobo.com/doc.php?d=install&p=PX201-101
//
//==<<<==<<<==<<<==<<<==<<<==<<<==<<<==<<<==<<<==<<<==<<<==<<<==<<<

// 22527 = E_ALL & ~E_DEPRECATED & ~E_STRICT
error_reporting( 22527 );

define( 'PATH_TBASE', 'tbase' );

//----------------------------------------------------------------
// isInteger
//----------------------------------------------------------------
function isInteger( $v )
{
	if ( strlen( $v ) == 0 ) return false;
	if ( !is_numeric( $v ) ) return false;
	if ( doubleval( $v ) - intval( $v ) != 0 ) return false;
	return true;
}

//----------------------------------------------------------------
// CAjaxPoll
//----------------------------------------------------------------
class CAjaxPoll
{
	function setup()
	{
		$this->items = array();
		$this->result = 'OK';
	}

	function validateTid( $tid )
	{
		if ( $tid == '' )
			return false;

		if ( $tid == "null" )
			return false;

		if ( strpos( $tid, ".." ) !== false )
			return false;

		if ( strpos( $tid, '/' ) !== false )
			return false;

		return true;
	}

	function initTB()
	{
		$this->items = array();
	}

	function parseTB( $txt )
	{
		$this->items = array();
		$txt = str_replace( "\r", "", $txt );
		$ax = split( "\n", $txt );
		foreach( $ax as $ln )
		{
			if ( strpos( $ln, "=" ) !== false )
			{
				$bx = split( "=", $ln );
				$this->items[$bx[0]] = $bx[1];
			}
		}
	}

	function combTB()
	{
		foreach( $this->items as $key => $val )
		{
			if ( $key != '' )
				$ax[] =  $key . '=' . $val;
		}
		return implode( "\r\n", $ax );
	}

	function vote2()
	{
		$dir = dirname(__FILE__) . "/" . PATH_TBASE;
		if ( !is_writable( $dir ) )
		{
			$this->result = "data folder[tbase] is not writable";
			return false;
		}

		if ( !isset( $_REQUEST['form_tid'] ) )
		{
			$this->result = "[form_tid] is not set";
			return false;
		}

		$form_tid = $_REQUEST['form_tid'];
		if ( $form_tid == '' )
		{
			$this->result = "[form_tid] is empty";
			return false;
		}

		if ( !$this->validateTid($form_tid) )
		{
			$this->result = "invalid [from_tid] ({$form_tid})";
			return false;
		}

		//-- get content of text　file
		$path = $dir . "/{$form_tid}.txt";
		if ( !file_exists( $path ) )
		{
			@file_put_contents( $path, $this->combTB() );
		}

		$handle = @fopen( $path, "r+" );

		//-- do an exclusive lock
		if ( !( @flock( $handle, LOCK_EX ) ) )
		{
			$this->result = "Can not write data in [tbase] " .
				"(Could not get the lock!)";
			return false;
		}

		$txt = '';
		$size = filesize( $path );
		if ( $size > 0 )
		{
			$txt = fread( $handle, $size );
		}
		$this->parseTB( $txt );

		//-- add votes
		$item_tid = '';
		if ( isset( $_REQUEST['item_tid'] ) )
			$item_tid = $_REQUEST['item_tid'];

		if ( !empty( $item_tid ) )
		{
			if ( !isset( $this->items[$item_tid] ) )
			{
				$this->items[$item_tid] = 0;
			}

			$x = $this->items[$item_tid];
			if ( !isInteger( $x ) ) $x = 0;
			$x = intval( $x );
			$this->items[$item_tid] = $x + 1;

			//-- truncate file
			fseek( $handle, 0 );
			ftruncate( $handle, 0 );

			//-- write votes to txt file
			fwrite( $handle, $this->combTB() );
		}

		//-- release the lock
		flock( $handle, LOCK_UN );

		//-- close the file
		fclose($handle);

		return true;
	}

	function vote()
	{
		$ret = array();
		$ret[] = "cmd:'vote'";

		if ( $this->vote2() )
		{
			if ( count( $this->items ) > 0 )
			{
				$ix = array();
				foreach( $this->items as $key => $val )
				{
					$ix[] = $key . ":" . $val;
				}
				$json_items = "{" . implode( ",", $ix ) . "}";
			}
			else
			{
				$json_items = "{}";
			}
			$ret[] = "items:{$json_items}";
		}
		$ret[] = "result:'" . $this->result . "'";

		//-- json
		$json = "{" . implode( ",", $ret ) . "}";

		echo $json;
	}

	function process( $cmd )
	{
		switch( $cmd )
		{
		case 'vote':
			$this->vote();
			break;
		}
	}
}

if ( isset( $_REQUEST['cmd'] ) )
{
	$obj = new CAjaxPoll();
	$obj->setup();
	$obj->process( $_REQUEST['cmd'] );
}

?>
