initialization
fromClass: aClass
	|tiClass|
	tiClass := self new.
	tiClass class: aClass.
	^ tiClass