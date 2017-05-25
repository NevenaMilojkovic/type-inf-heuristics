*TypeInferenceHeuristics-Browser
show
	"comment stating purpose of message"
	| browser |
	browser := TITypeBrowser new.
	browser tiClass: self.
	browser variableModel items: (self dictOfSelectors keys sort).
	browser openWithSpec
	