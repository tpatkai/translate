{"changed":true,"filter":false,"title":"votecount.js","tooltip":"/app/assets/javascripts/votecount.js","value":"","undoManager":{"mark":-1,"position":25,"stack":[[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":29,"column":6},"action":"insert","lines":["$(function(){","        $(\".ratelink\").click(function(){","            var val = $(this).attr('updown');","            var theid = $(this).attr('theid');","            $(\"#votewrapper\").block({ //blocks rate-rates while processing","                message: null,","                overlayCSS: {","                    backgroundColor: '#FFF',","                    opacity: 0.6,","                    cursor: 'default'","                },","            });","        if (val == \"up\") {","        $.ajax({","                type: 'PUT',","                url: \"/mymodel/voteup?id=\"+theid,","                success: function(){","                            $(\"#votewrapper\").unblock();","                            }   ","                   });","        } else {","             $.ajax({","                type: 'PUT',","                url: \"/mymodel/votedown?id=\"+theid,","                success: function(){","                            $(\"#votewrapper\").unblock();","                            }   ","                   });","        }","    })"]}]}],[{"group":"doc","deltas":[{"start":{"row":29,"column":6},"end":{"row":30,"column":0},"action":"insert","lines":["",""]},{"start":{"row":30,"column":0},"end":{"row":30,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":4},"end":{"row":30,"column":5},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":5},"end":{"row":30,"column":6},"action":"insert","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":6},"end":{"row":30,"column":7},"action":"insert","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":7},"end":{"row":31,"column":0},"action":"insert","lines":["",""]},{"start":{"row":31,"column":0},"end":{"row":31,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":31,"column":2},"end":{"row":31,"column":4},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":31,"column":0},"end":{"row":31,"column":2},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":7},"end":{"row":31,"column":0},"action":"remove","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":6},"end":{"row":30,"column":7},"action":"remove","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":5},"end":{"row":30,"column":6},"action":"remove","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":4},"end":{"row":30,"column":5},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":2},"end":{"row":30,"column":4},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":0},"end":{"row":30,"column":2},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":29,"column":0},"end":{"row":29,"column":2},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":29,"column":0},"end":{"row":29,"column":2},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":29,"column":1},"end":{"row":29,"column":2},"action":"remove","lines":[")"]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":0},"end":{"row":30,"column":1},"action":"insert","lines":["}"]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":0},"end":{"row":30,"column":1},"action":"remove","lines":["}"]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":0},"end":{"row":30,"column":1},"action":"insert","lines":[")"]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":0},"end":{"row":30,"column":1},"action":"remove","lines":[")"]}]}],[{"group":"doc","deltas":[{"start":{"row":29,"column":1},"end":{"row":30,"column":0},"action":"remove","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":29,"column":0},"end":{"row":29,"column":1},"action":"remove","lines":["}"]}]}],[{"group":"doc","deltas":[{"start":{"row":28,"column":9},"end":{"row":29,"column":0},"action":"remove","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":28,"column":8},"end":{"row":28,"column":9},"action":"remove","lines":["}"]}]}],[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":28,"column":8},"action":"remove","lines":["$(function(){","        $(\".ratelink\").click(function(){","            var val = $(this).attr('updown');","            var theid = $(this).attr('theid');","            $(\"#votewrapper\").block({ //blocks rate-rates while processing","                message: null,","                overlayCSS: {","                    backgroundColor: '#FFF',","                    opacity: 0.6,","                    cursor: 'default'","                },","            });","        if (val == \"up\") {","        $.ajax({","                type: 'PUT',","                url: \"/mymodel/voteup?id=\"+theid,","                success: function(){","                            $(\"#votewrapper\").unblock();","                            }   ","                   });","        } else {","             $.ajax({","                type: 'PUT',","                url: \"/mymodel/votedown?id=\"+theid,","                success: function(){","                            $(\"#votewrapper\").unblock();","                            }   ","                   });","        "]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":0,"column":0},"end":{"row":0,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1428415512024}