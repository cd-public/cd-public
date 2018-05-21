## Name: String Reverse
## In:   to_reverse:  a string to be reversed
## Out:  the reversed string
## Example:
## >>> sr.string_reverse("abc")
## "cba"
## >>>
def string_reverse(to_reverse):
	temp = list(to_reverse)
	for i in range(len(to_reverse)):
		temp[len(to_reverse) - 1 - i] = to_reverse[i]
	return "".join(temp)
