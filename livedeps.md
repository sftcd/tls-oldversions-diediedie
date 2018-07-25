# Finding "live" RFC dependencies

We're trying to deprecate TLSv1.0
[RFC2246](https://tools.ietf.org/html/rfc2246) and TLSv1.1
[RFC4346](https://tools.ietf.org/html/rfc4346).

Other RFCs may refer to these. Those other RFCs might already have been
OBSOLETED (hopefully so), or, if not, we likely need to UPDATE them as part of
this process.

We may therefore need a tool to find the set of RFCs that normatively refer to
our target RFC and that have not yet been OBSOLETEd.

Jari has a page that shows RFC reference dependencies, e.g.
[this](https://www.arkko.com/tools/allstats/citations-rfc2246.html) is for
RFC2246.

The datatracker also presents some dependency information, e.g.  a search for
RFC2246 produces
[this](https://datatracker.ietf.org/doc/search?name=RFC2246&sort=&rfcs=on&activedrafts=on&by=group&group=)
showing some of the relevant OBSOLETEs and UPDATEs. The tracker also has an
experimental tool for showing who references an RFC, e.g.
[this](https://datatracker.ietf.org/doc/rfc2246/referencedby/) for RFC2246.
That does show if the reference is normative or informative, but doesn't say if
the referencing RFC has been OBSOLETEd by something else.

So there might be a tweak to the tracker tool that'd be useful. Or, maybe a
standalone tool would be ok for now, with functionality to be integrated with
the tracker later. 

Separately from all of the above, there may be fun to be had with the fact that
as part of this activity, we're also updating
[RFC7525](https://tools.ietf.org/html/rfc7525) which is a BCP
[BCP195](https://tools.ietf.org/html/bcp195). I think that means our draft
needs to become a part of BCP195, as well as doing whatever UPDATEs and
OBSOLETEs (if any) are needed. 

