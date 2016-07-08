extern crate chinese_pinyin;
extern crate libc;

use libc::c_char;
use std::ffi::CStr;
use std::ffi::CString;

#[no_mangle]
pub extern "C" fn translate(characters: *const c_char, splitter: *const c_char, tonemarks: bool, tone: bool, camel: bool) -> *const c_char {
	let c_characters = unsafe {
		assert!(!characters.is_null());

		CStr::from_ptr(characters)
	};
	let c_splitter = unsafe {
		assert!(!splitter.is_null());

		CStr::from_ptr(splitter)
	};

	let characters_str = std::str::from_utf8(c_characters.to_bytes()).unwrap();
	let splitter_str = std::str::from_utf8(c_splitter.to_bytes()).unwrap();


	let mut args = chinese_pinyin::Args::new();
	args.splitter = splitter_str.to_string();
	args.tonemarks = tonemarks;
	args.tone = tone;
	args.camel = camel;

	let result = chinese_pinyin::translate(characters_str, &args);

	let c_result = CString::new(result).unwrap();
	c_result.into_raw()
}
