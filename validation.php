<?php

class Input {

	private $inputList = array();
	private $errors = array();
	
	function __construct($inputList) {
		$this->inputList = $inputList;
	}
	
	function validate() {
		foreach($this->inputList as $input => $data) {
			if(empty($data)) {
				$this->errors[] = $input . " is empty";
			}
		}
	}
	
	function outputError() {
		foreach($this->errors as $data) {
			echo $data . "<br />"; //behövs modiferas här
		}
	}
	
}
