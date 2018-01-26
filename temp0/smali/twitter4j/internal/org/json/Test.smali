.class public Ltwitter4j/internal/org/json/Test;
.super Ljava/lang/Object;
.source "Test.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 27
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 72
    new-instance v20, Ltwitter4j/internal/org/json/Test$1Obj;

    const-string v23, "A beany object"

    const-wide/high16 v24, 0x4045000000000000L    # 42.0

    const/16 v26, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Ltwitter4j/internal/org/json/Test$1Obj;-><init>(Ljava/lang/String;DZ)V

    .line 75
    .local v20, "obj":Ltwitter4j/internal/org/json/Test$1Obj;
    :try_start_0
    const-string v23, "<![CDATA[This is a collection of test patterns and examples for org.json.]]>  Ignore the stuff past the end.  "

    invoke-static/range {v23 .. v23}, Ltwitter4j/internal/org/json/XML;->toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    .line 76
    .local v12, "j":Ltwitter4j/internal/org/json/JSONObject;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    const-string v21, "{     \"list of lists\" : [         [1, 2, 3],         [4, 5, 6],     ] }"

    .line 79
    .local v21, "s":Ljava/lang/String;
    new-instance v12, Ltwitter4j/internal/org/json/JSONObject;

    .end local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 80
    .restart local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    const-string v21, "<recipe name=\"bread\" prep_time=\"5 mins\" cook_time=\"3 hours\"> <title>Basic bread</title> <ingredient amount=\"8\" unit=\"dL\">Flour</ingredient> <ingredient amount=\"10\" unit=\"grams\">Yeast</ingredient> <ingredient amount=\"4\" unit=\"dL\" state=\"warm\">Water</ingredient> <ingredient amount=\"1\" unit=\"teaspoon\">Salt</ingredient> <instructions> <step>Mix all ingredients together.</step> <step>Knead thoroughly.</step> <step>Cover with a cloth, and leave for one hour in warm room.</step> <step>Knead again.</step> <step>Place in a bread baking tin.</step> <step>Cover with a cloth, and leave for one hour in warm room.</step> <step>Bake in the oven at 180(degrees)C for 30 minutes.</step> </instructions> </recipe> "

    .line 84
    invoke-static/range {v21 .. v21}, Ltwitter4j/internal/org/json/XML;->toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    .line 85
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 88
    invoke-static/range {v21 .. v21}, Ltwitter4j/internal/org/json/JSONML;->toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    .line 89
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ltwitter4j/internal/org/json/JSONML;->toString(Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 93
    invoke-static/range {v21 .. v21}, Ltwitter4j/internal/org/json/JSONML;->toJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v5

    .line 94
    .local v5, "a":Ltwitter4j/internal/org/json/JSONArray;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ltwitter4j/internal/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v5}, Ltwitter4j/internal/org/json/JSONML;->toString(Ltwitter4j/internal/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 98
    const-string v21, "<div id=\"demo\" class=\"JSONML\"><p>JSONML is a transformation between <b>JSON</b> and <b>XML</b> that preserves ordering of document features.</p><p>JSONML can work with JSON arrays or JSON objects.</p><p>Three<br/>little<br/>words</p></div>"

    .line 99
    invoke-static/range {v21 .. v21}, Ltwitter4j/internal/org/json/JSONML;->toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    .line 100
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ltwitter4j/internal/org/json/JSONML;->toString(Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 104
    invoke-static/range {v21 .. v21}, Ltwitter4j/internal/org/json/JSONML;->toJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v5

    .line 105
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ltwitter4j/internal/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v5}, Ltwitter4j/internal/org/json/JSONML;->toString(Ltwitter4j/internal/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->println()V

    .line 109
    const-string v21, "<person created=\"2006-11-11T19:23\" modified=\"2006-12-31T23:59\">\n <firstName>Robert</firstName>\n <lastName>Smith</lastName>\n <address type=\"home\">\n <street>12345 Sixth Ave</street>\n <city>Anytown</city>\n <state>CA</state>\n <postalCode>98765-4321</postalCode>\n </address>\n </person>"

    .line 110
    invoke-static/range {v21 .. v21}, Ltwitter4j/internal/org/json/XML;->toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    .line 111
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    new-instance v12, Ltwitter4j/internal/org/json/JSONObject;

    .end local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/Object;)V

    .line 114
    .restart local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    const-string v21, "{ \"entity\": { \"imageURL\": \"\", \"name\": \"IXXXXXXXXXXXXX\", \"id\": 12336, \"ratingCount\": null, \"averageRating\": null } }"

    .line 117
    new-instance v12, Ltwitter4j/internal/org/json/JSONObject;

    .end local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 118
    .restart local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    new-instance v16, Ltwitter4j/internal/org/json/JSONStringer;

    invoke-direct/range {v16 .. v16}, Ltwitter4j/internal/org/json/JSONStringer;-><init>()V

    .line 121
    .local v16, "jj":Ltwitter4j/internal/org/json/JSONStringer;
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/internal/org/json/JSONStringer;->object()Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    const-string v24, "single"

    invoke-virtual/range {v23 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->key(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    const-string v24, "MARIE HAA\'S"

    invoke-virtual/range {v23 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->value(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    const-string v24, "Johnny"

    invoke-virtual/range {v23 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->key(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    const-string v24, "MARIE HAA\\\'S"

    invoke-virtual/range {v23 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->value(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    const-string v24, "foo"

    invoke-virtual/range {v23 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->key(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    const-string v24, "bar"

    invoke-virtual/range {v23 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->value(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    const-string v24, "baz"

    invoke-virtual/range {v23 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->key(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ltwitter4j/internal/org/json/JSONWriter;->array()Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ltwitter4j/internal/org/json/JSONWriter;->object()Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    const-string v24, "quux"

    invoke-virtual/range {v23 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->key(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    const-string v24, "Thanks, Josh!"

    invoke-virtual/range {v23 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->value(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ltwitter4j/internal/org/json/JSONWriter;->endObject()Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ltwitter4j/internal/org/json/JSONWriter;->endArray()Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    const-string v24, "obj keys"

    invoke-virtual/range {v23 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->key(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    invoke-static/range {v20 .. v20}, Ltwitter4j/internal/org/json/JSONObject;->getNames(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->value(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ltwitter4j/internal/org/json/JSONWriter;->endObject()Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 140
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ltwitter4j/internal/org/json/JSONStringer;

    invoke-direct/range {v24 .. v24}, Ltwitter4j/internal/org/json/JSONStringer;-><init>()V

    invoke-virtual/range {v24 .. v24}, Ltwitter4j/internal/org/json/JSONStringer;->object()Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v24

    const-string v25, "a"

    invoke-virtual/range {v24 .. v25}, Ltwitter4j/internal/org/json/JSONWriter;->key(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->array()Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->array()Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->array()Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v24

    const-string v25, "b"

    invoke-virtual/range {v24 .. v25}, Ltwitter4j/internal/org/json/JSONWriter;->value(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->endArray()Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->endArray()Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->endArray()Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->endObject()Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    new-instance v16, Ltwitter4j/internal/org/json/JSONStringer;

    .end local v16    # "jj":Ltwitter4j/internal/org/json/JSONStringer;
    invoke-direct/range {v16 .. v16}, Ltwitter4j/internal/org/json/JSONStringer;-><init>()V

    .line 156
    .restart local v16    # "jj":Ltwitter4j/internal/org/json/JSONStringer;
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/internal/org/json/JSONStringer;->array()Ltwitter4j/internal/org/json/JSONWriter;

    .line 157
    const-wide/16 v23, 0x1

    move-object/from16 v0, v16

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/org/json/JSONStringer;->value(J)Ltwitter4j/internal/org/json/JSONWriter;

    .line 158
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/internal/org/json/JSONStringer;->array()Ltwitter4j/internal/org/json/JSONWriter;

    .line 159
    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ltwitter4j/internal/org/json/JSONStringer;->value(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONWriter;

    .line 160
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/internal/org/json/JSONStringer;->array()Ltwitter4j/internal/org/json/JSONWriter;

    .line 161
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/internal/org/json/JSONStringer;->object()Ltwitter4j/internal/org/json/JSONWriter;

    .line 162
    const-string v23, "empty-array"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ltwitter4j/internal/org/json/JSONStringer;->key(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ltwitter4j/internal/org/json/JSONWriter;->array()Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ltwitter4j/internal/org/json/JSONWriter;->endArray()Ltwitter4j/internal/org/json/JSONWriter;

    .line 163
    const-string v23, "answer"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ltwitter4j/internal/org/json/JSONStringer;->key(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    const-wide/16 v24, 0x2a

    invoke-virtual/range {v23 .. v25}, Ltwitter4j/internal/org/json/JSONWriter;->value(J)Ltwitter4j/internal/org/json/JSONWriter;

    .line 164
    const-string v23, "null"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ltwitter4j/internal/org/json/JSONStringer;->key(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->value(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONWriter;

    .line 165
    const-string v23, "false"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ltwitter4j/internal/org/json/JSONStringer;->key(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->value(Z)Ltwitter4j/internal/org/json/JSONWriter;

    .line 166
    const-string v23, "true"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ltwitter4j/internal/org/json/JSONStringer;->key(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->value(Z)Ltwitter4j/internal/org/json/JSONWriter;

    .line 167
    const-string v23, "big"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ltwitter4j/internal/org/json/JSONStringer;->key(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    const-wide v24, 0x53e27ed9d50e89b3L    # 1.23456789E96

    invoke-virtual/range {v23 .. v25}, Ltwitter4j/internal/org/json/JSONWriter;->value(D)Ltwitter4j/internal/org/json/JSONWriter;

    .line 168
    const-string v23, "small"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ltwitter4j/internal/org/json/JSONStringer;->key(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    const-wide v24, 0x2f576be43f1e4b54L    # 1.23456789E-80

    invoke-virtual/range {v23 .. v25}, Ltwitter4j/internal/org/json/JSONWriter;->value(D)Ltwitter4j/internal/org/json/JSONWriter;

    .line 169
    const-string v23, "empty-object"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ltwitter4j/internal/org/json/JSONStringer;->key(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ltwitter4j/internal/org/json/JSONWriter;->object()Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ltwitter4j/internal/org/json/JSONWriter;->endObject()Ltwitter4j/internal/org/json/JSONWriter;

    .line 170
    const-string v23, "long"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ltwitter4j/internal/org/json/JSONStringer;->key(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONWriter;

    .line 171
    const-wide v23, 0x7fffffffffffffffL

    move-object/from16 v0, v16

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/org/json/JSONStringer;->value(J)Ltwitter4j/internal/org/json/JSONWriter;

    .line 172
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/internal/org/json/JSONStringer;->endObject()Ltwitter4j/internal/org/json/JSONWriter;

    .line 173
    const-string v23, "two"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ltwitter4j/internal/org/json/JSONStringer;->value(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONWriter;

    .line 174
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/internal/org/json/JSONStringer;->endArray()Ltwitter4j/internal/org/json/JSONWriter;

    .line 175
    const/16 v23, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ltwitter4j/internal/org/json/JSONStringer;->value(Z)Ltwitter4j/internal/org/json/JSONWriter;

    .line 176
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/internal/org/json/JSONStringer;->endArray()Ltwitter4j/internal/org/json/JSONWriter;

    .line 177
    const-wide v23, 0x4058a66666666666L    # 98.6

    move-object/from16 v0, v16

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/org/json/JSONStringer;->value(D)Ltwitter4j/internal/org/json/JSONWriter;

    .line 178
    const-wide/high16 v23, -0x3fa7000000000000L    # -100.0

    move-object/from16 v0, v16

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/org/json/JSONStringer;->value(D)Ltwitter4j/internal/org/json/JSONWriter;

    .line 179
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/internal/org/json/JSONStringer;->object()Ltwitter4j/internal/org/json/JSONWriter;

    .line 180
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/internal/org/json/JSONStringer;->endObject()Ltwitter4j/internal/org/json/JSONWriter;

    .line 181
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/internal/org/json/JSONStringer;->object()Ltwitter4j/internal/org/json/JSONWriter;

    .line 182
    const-string v23, "one"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ltwitter4j/internal/org/json/JSONStringer;->key(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONWriter;

    .line 183
    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v16

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/org/json/JSONStringer;->value(D)Ltwitter4j/internal/org/json/JSONWriter;

    .line 184
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/internal/org/json/JSONStringer;->endObject()Ltwitter4j/internal/org/json/JSONWriter;

    .line 185
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ltwitter4j/internal/org/json/JSONStringer;->value(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONWriter;

    .line 186
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/internal/org/json/JSONStringer;->endArray()Ltwitter4j/internal/org/json/JSONWriter;

    .line 187
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v16 .. v16}, Ltwitter4j/internal/org/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 189
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ltwitter4j/internal/org/json/JSONArray;

    invoke-virtual/range {v16 .. v16}, Ltwitter4j/internal/org/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Ltwitter4j/internal/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 191
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v7, v0, [I

    fill-array-data v7, :array_0

    .line 192
    .local v7, "ar":[I
    new-instance v14, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v14, v7}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 193
    .local v14, "ja":Ltwitter4j/internal/org/json/JSONArray;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v14}, Ltwitter4j/internal/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "aString"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const-string v24, "aNumber"

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-string v24, "aBoolean"

    aput-object v24, v22, v23

    .line 196
    .local v22, "sa":[Ljava/lang/String;
    new-instance v12, Ltwitter4j/internal/org/json/JSONObject;

    .end local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 197
    .restart local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    const-string v23, "Testing JSONString interface"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 198
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    new-instance v12, Ltwitter4j/internal/org/json/JSONObject;

    .end local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    const-string v23, "{slashes: \'///\', closetag: \'</script>\', backslash:\'\\\\\', ei: {quotes: \'\"\\\'\'},eo: {a: \'\"quoted\"\', b:\"don\'t\"}, quotes: [\"\'\", \'\"\']}"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 201
    .restart local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 202
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    new-instance v12, Ltwitter4j/internal/org/json/JSONObject;

    .end local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    const-string v23, "{foo: [true, false,9876543210,    0.0, 1.00000001,  1.000000000001, 1.00000000000000001, .00000000000000001, 2.00, 0.1, 2e100, -32,[],{}, \"string\"],   to   : null, op : \'Good\',ten:10} postfix comment"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 210
    .restart local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    const-string v23, "String"

    const-string v24, "98.6"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 211
    const-string v23, "JSONObject"

    new-instance v24, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct/range {v24 .. v24}, Ltwitter4j/internal/org/json/JSONObject;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 212
    const-string v23, "JSONArray"

    new-instance v24, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct/range {v24 .. v24}, Ltwitter4j/internal/org/json/JSONArray;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 213
    const-string v23, "int"

    const/16 v24, 0x39

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;I)Ltwitter4j/internal/org/json/JSONObject;

    .line 214
    const-string v23, "double"

    const-wide v24, 0x45f8ee90ff6c373eL    # 1.2345678901234568E29

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v12, v0, v1, v2}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;D)Ltwitter4j/internal/org/json/JSONObject;

    .line 215
    const-string v23, "true"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Z)Ltwitter4j/internal/org/json/JSONObject;

    .line 216
    const-string v23, "false"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Z)Ltwitter4j/internal/org/json/JSONObject;

    .line 217
    const-string v23, "null"

    sget-object v24, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 218
    const-string v23, "bool"

    const-string v24, "true"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 219
    const-string v23, "zero"

    const-wide/high16 v24, -0x8000000000000000L

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v12, v0, v1, v2}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;D)Ltwitter4j/internal/org/json/JSONObject;

    .line 220
    const-string v23, "\\u2028"

    const-string v24, "\u2028"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 221
    const-string v23, "\\u2029"

    const-string v24, "\u2029"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 222
    const-string v23, "foo"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v5

    .line 223
    const/16 v23, 0x29a

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(I)Ltwitter4j/internal/org/json/JSONArray;

    .line 224
    const-wide v23, 0x409f47f5c28f5c29L    # 2001.99

    move-wide/from16 v0, v23

    invoke-virtual {v5, v0, v1}, Ltwitter4j/internal/org/json/JSONArray;->put(D)Ltwitter4j/internal/org/json/JSONArray;

    .line 225
    const-string v23, "so \"fine\"."

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 226
    const-string v23, "so <fine>."

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 227
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Z)Ltwitter4j/internal/org/json/JSONArray;

    .line 228
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Z)Ltwitter4j/internal/org/json/JSONArray;

    .line 229
    new-instance v23, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct/range {v23 .. v23}, Ltwitter4j/internal/org/json/JSONArray;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 230
    new-instance v23, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct/range {v23 .. v23}, Ltwitter4j/internal/org/json/JSONObject;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 231
    const-string v23, "keys"

    invoke-static {v12}, Ltwitter4j/internal/org/json/JSONObject;->getNames(Ltwitter4j/internal/org/json/JSONObject;)[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 232
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 235
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "String: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "String"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "  bool: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "bool"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "    to: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "to"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "  true: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "true"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 239
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "   foo: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "foo"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "    op: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "op"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 241
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "   ten: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "ten"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "  oops: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "oops"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    const-string v21, "<xml one = 1 two=\' \"2\" \'><five></five>First \t&lt;content&gt;<five></five> This is \"content\". <three>  3  </three>JSON does not preserve the sequencing of elements and contents.<three>  III  </three>  <three>  T H R E E</three><four/>Content text is an implied structure in XML. <six content=\"6\"/>JSON does not have implied structure:<seven>7</seven>everything is explicit.<![CDATA[CDATA blocks<are><supported>!]]></xml>"

    .line 245
    invoke-static/range {v21 .. v21}, Ltwitter4j/internal/org/json/XML;->toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    .line 246
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 250
    invoke-static/range {v21 .. v21}, Ltwitter4j/internal/org/json/JSONML;->toJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v14

    .line 251
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Ltwitter4j/internal/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 252
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v14}, Ltwitter4j/internal/org/json/JSONML;->toString(Ltwitter4j/internal/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 253
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 255
    const-string v21, "<xml do=\'0\'>uno<a re=\'1\' mi=\'2\'>dos<b fa=\'3\'/>tres<c>true</c>quatro</a>cinqo<d>seis<e/></d></xml>"

    .line 256
    invoke-static/range {v21 .. v21}, Ltwitter4j/internal/org/json/JSONML;->toJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v14

    .line 257
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Ltwitter4j/internal/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 258
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v14}, Ltwitter4j/internal/org/json/JSONML;->toString(Ltwitter4j/internal/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 259
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 261
    const-string v21, "<mapping><empty/>   <class name = \"Customer\">      <field name = \"ID\" type = \"string\">         <bind-xml name=\"ID\" node=\"attribute\"/>      </field>      <field name = \"FirstName\" type = \"FirstName\"/>      <field name = \"MI\" type = \"MI\"/>      <field name = \"LastName\" type = \"LastName\"/>   </class>   <class name = \"FirstName\">      <field name = \"text\">         <bind-xml name = \"text\" node = \"text\"/>      </field>   </class>   <class name = \"MI\">      <field name = \"text\">         <bind-xml name = \"text\" node = \"text\"/>      </field>   </class>   <class name = \"LastName\">      <field name = \"text\">         <bind-xml name = \"text\" node = \"text\"/>      </field>   </class></mapping>"

    .line 262
    invoke-static/range {v21 .. v21}, Ltwitter4j/internal/org/json/XML;->toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    .line 264
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 266
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    invoke-static/range {v21 .. v21}, Ltwitter4j/internal/org/json/JSONML;->toJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v14

    .line 268
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Ltwitter4j/internal/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 269
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v14}, Ltwitter4j/internal/org/json/JSONML;->toString(Ltwitter4j/internal/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 270
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 272
    const-string v23, "<?xml version=\"1.0\" ?><Book Author=\"Anonymous\"><Title>Sample Book</Title><Chapter id=\"1\">This is chapter 1. It is not very long or interesting.</Chapter><Chapter id=\"2\">This is chapter 2. Although it is longer than chapter 1, it is not any more interesting.</Chapter></Book>"

    invoke-static/range {v23 .. v23}, Ltwitter4j/internal/org/json/XML;->toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    .line 273
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 275
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    const-string v23, "<!DOCTYPE bCard \'http://www.cs.caltech.edu/~adam/schemas/bCard\'><bCard><?xml default bCard        firstname = \'\'        lastname  = \'\' company   = \'\' email = \'\' homepage  = \'\'?><bCard        firstname = \'Rohit\'        lastname  = \'Khare\'        company   = \'MCI\'        email     = \'khare@mci.net\'        homepage  = \'http://pest.w3.org/\'/><bCard        firstname = \'Adam\'        lastname  = \'Rifkin\'        company   = \'Caltech Infospheres Project\'        email     = \'adam@cs.caltech.edu\'        homepage  = \'http://www.cs.caltech.edu/~adam/\'/></bCard>"

    invoke-static/range {v23 .. v23}, Ltwitter4j/internal/org/json/XML;->toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    .line 278
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 279
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 280
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 282
    const-string v23, "<?xml version=\"1.0\"?><customer>    <firstName>        <text>Fred</text>    </firstName>    <ID>fbs0001</ID>    <lastName> <text>Scerbo</text>    </lastName>    <MI>        <text>B</text>    </MI></customer>"

    invoke-static/range {v23 .. v23}, Ltwitter4j/internal/org/json/XML;->toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    .line 283
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 284
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 285
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 287
    const-string v23, "<!ENTITY tp-address PUBLIC \'-//ABC University::Special Collections Library//TEXT (titlepage: name and address)//EN\' \'tpspcoll.sgm\'><list type=\'simple\'><head>Repository Address </head><item>Special Collections Library</item><item>ABC University</item><item>Main Library, 40 Circle Drive</item><item>Ourtown, Pennsylvania</item><item>17654 USA</item></list>"

    invoke-static/range {v23 .. v23}, Ltwitter4j/internal/org/json/XML;->toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    .line 288
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 289
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 290
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    const-string v23, "<test intertag status=ok><empty/>deluxe<blip sweet=true>&amp;&quot;toot&quot;&toot;&#x41;</blip><x>eks</x><w>bonus</w><w>bonus2</w></test>"

    invoke-static/range {v23 .. v23}, Ltwitter4j/internal/org/json/XML;->toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    .line 293
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 297
    const-string v23, "GET / HTTP/1.0\nAccept: image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, application/vnd.ms-powerpoint, application/vnd.ms-excel, application/msword, */*\nAccept-Language: en-us\nUser-Agent: Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90; T312461; Q312461)\nHost: www.nokko.com\nConnection: keep-alive\nAccept-encoding: gzip, deflate\n"

    invoke-static/range {v23 .. v23}, Ltwitter4j/internal/org/json/HTTP;->toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    .line 298
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 299
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ltwitter4j/internal/org/json/HTTP;->toString(Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 300
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    const-string v23, "HTTP/1.1 200 Oki Doki\nDate: Sun, 26 May 2002 17:38:52 GMT\nServer: Apache/1.3.23 (Unix) mod_perl/1.26\nKeep-Alive: timeout=15, max=100\nConnection: Keep-Alive\nTransfer-Encoding: chunked\nContent-Type: text/html\n"

    invoke-static/range {v23 .. v23}, Ltwitter4j/internal/org/json/HTTP;->toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    .line 303
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 304
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ltwitter4j/internal/org/json/HTTP;->toString(Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    new-instance v12, Ltwitter4j/internal/org/json/JSONObject;

    .end local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    const-string v23, "{nix: null, nux: false, null: \'null\', \'Request-URI\': \'/\', Method: \'GET\', \'HTTP-Version\': \'HTTP/1.0\'}"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 308
    .restart local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 309
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "isNull: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "nix"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 310
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "   has: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "nix"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 311
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 312
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ltwitter4j/internal/org/json/HTTP;->toString(Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 315
    const-string v23, "<?xml version=\'1.0\' encoding=\'UTF-8\'?>\n\n<SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:xsi=\"http://www.w3.org/1999/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/1999/XMLSchema\"><SOAP-ENV:Body><ns1:doGoogleSearch xmlns:ns1=\"urn:GoogleSearch\" SOAP-ENV:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\"><key xsi:type=\"xsd:string\">GOOGLEKEY</key> <q xsi:type=\"xsd:string\">\'+search+\'</q> <start xsi:type=\"xsd:int\">0</start> <maxResults xsi:type=\"xsd:int\">10</maxResults> <filter xsi:type=\"xsd:boolean\">true</filter> <restrict xsi:type=\"xsd:string\"></restrict> <safeSearch xsi:type=\"xsd:boolean\">false</safeSearch> <lr xsi:type=\"xsd:string\"></lr> <ie xsi:type=\"xsd:string\">latin1</ie> <oe xsi:type=\"xsd:string\">latin1</oe></ns1:doGoogleSearch></SOAP-ENV:Body></SOAP-ENV:Envelope>"

    invoke-static/range {v23 .. v23}, Ltwitter4j/internal/org/json/XML;->toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    .line 334
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 336
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 338
    new-instance v12, Ltwitter4j/internal/org/json/JSONObject;

    .end local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    const-string v23, "{Envelope: {Body: {\"ns1:doGoogleSearch\": {oe: \"latin1\", filter: true, q: \"\'+search+\'\", key: \"GOOGLEKEY\", maxResults: 10, \"SOAP-ENV:encodingStyle\": \"http://schemas.xmlsoap.org/soap/encoding/\", start: 0, ie: \"latin1\", safeSearch:false, \"xmlns:ns1\": \"urn:GoogleSearch\"}}}}"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 339
    .restart local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 340
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 341
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 343
    const-string v23, "  f%oo = b+l=ah  ; o;n%40e = t.wo "

    invoke-static/range {v23 .. v23}, Ltwitter4j/internal/org/json/CookieList;->toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    .line 344
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 345
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ltwitter4j/internal/org/json/CookieList;->toString(Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    const-string v23, "f%oo=blah; secure ;expires = April 24, 2002"

    invoke-static/range {v23 .. v23}, Ltwitter4j/internal/org/json/Cookie;->toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    .line 349
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 350
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ltwitter4j/internal/org/json/Cookie;->toString(Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 351
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 353
    new-instance v12, Ltwitter4j/internal/org/json/JSONObject;

    .end local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    const-string v23, "{script: \'It is not allowed in HTML to send a close script tag in a string<script>because it confuses browsers</script>so we insert a backslash before the /\'}"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 354
    .restart local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 355
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 357
    new-instance v18, Ltwitter4j/internal/org/json/JSONTokener;

    const-string v23, "{op:\'test\', to:\'session\', pre:1}{op:\'test\', to:\'session\', pre:2}"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ltwitter4j/internal/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 358
    .local v18, "jt":Ltwitter4j/internal/org/json/JSONTokener;
    new-instance v12, Ltwitter4j/internal/org/json/JSONObject;

    .end local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ltwitter4j/internal/org/json/JSONTokener;)V

    .line 359
    .restart local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 360
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "pre: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "pre"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 361
    const/16 v23, 0x7b

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ltwitter4j/internal/org/json/JSONTokener;->skipTo(C)C

    move-result v10

    .line 362
    .local v10, "i":I
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->println(I)V

    .line 363
    new-instance v12, Ltwitter4j/internal/org/json/JSONObject;

    .end local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ltwitter4j/internal/org/json/JSONTokener;)V

    .line 364
    .restart local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    const-string v23, "No quotes, \'Single Quotes\', \"Double Quotes\"\n1,\'2\',\"3\"\n,\'It is \"good,\"\', \"It works.\"\n\n"

    invoke-static/range {v23 .. v23}, Ltwitter4j/internal/org/json/CDL;->toJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v5

    .line 369
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v5}, Ltwitter4j/internal/org/json/CDL;->toString(Ltwitter4j/internal/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 371
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ltwitter4j/internal/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    new-instance v5, Ltwitter4j/internal/org/json/JSONArray;

    .end local v5    # "a":Ltwitter4j/internal/org/json/JSONArray;
    const-string v23, " [\"<escape>\", next is an implied null , , ok,] "

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 375
    .restart local v5    # "a":Ltwitter4j/internal/org/json/JSONArray;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ltwitter4j/internal/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 376
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 377
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v5}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 380
    new-instance v12, Ltwitter4j/internal/org/json/JSONObject;

    .end local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    const-string v23, "{ fun => with non-standard forms ; forgiving => This package can be used to parse formats that are similar to but not stricting conforming to JSON; why=To make it easier to migrate existing data to JSON,one = [[1.00]]; uno=[[{1=>1}]];\'+\':+6e66 ;pluses=+++;empty = \'\' , \'double\':0.666,true: TRUE, false: FALSE, null=NULL;[true] = [[!,@;*]]; string=>  o. k. ; \r oct=0666; hex=0x666; dec=666; o=0999; noh=0x0x}"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 381
    .restart local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 382
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 383
    const-string v23, "true"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    const-string v23, "false"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 384
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "It\'s all good"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 387
    :cond_0
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 388
    new-instance v13, Ltwitter4j/internal/org/json/JSONObject;

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "dec"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-string v25, "oct"

    aput-object v25, v23, v24

    const/16 v24, 0x2

    const-string v25, "hex"

    aput-object v25, v23, v24

    const/16 v24, 0x3

    const-string v25, "missing"

    aput-object v25, v23, v24

    move-object/from16 v0, v23

    invoke-direct {v13, v12, v0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ltwitter4j/internal/org/json/JSONObject;[Ljava/lang/String;)V

    .line 389
    .end local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    .local v13, "j":Ltwitter4j/internal/org/json/JSONObject;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 391
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 392
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ltwitter4j/internal/org/json/JSONStringer;

    invoke-direct/range {v24 .. v24}, Ltwitter4j/internal/org/json/JSONStringer;-><init>()V

    invoke-virtual/range {v24 .. v24}, Ltwitter4j/internal/org/json/JSONStringer;->array()Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ltwitter4j/internal/org/json/JSONWriter;->value(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ltwitter4j/internal/org/json/JSONWriter;->value(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->endArray()Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 394
    new-instance v12, Ltwitter4j/internal/org/json/JSONObject;

    const-string v23, "{string: \"98.6\", long: 2147483648, int: 2147483647, longer: 9223372036854775807, double: 9223372036854775808}"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 395
    .end local v13    # "j":Ltwitter4j/internal/org/json/JSONObject;
    .restart local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 397
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "\ngetInt"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 398
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "int    "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "int"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 399
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "long   "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "long"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 400
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "longer "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "longer"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 401
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "double "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "double"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 402
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "string "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "string"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 404
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "\ngetLong"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 405
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "int    "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "int"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 406
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "long   "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "long"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 407
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "longer "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "longer"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 408
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "double "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "double"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 409
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "string "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "string"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 411
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "\ngetDouble"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 412
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "int    "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "int"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 413
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "long   "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "long"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 414
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "longer "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "longer"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 415
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "double "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "double"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 416
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const-string v25, "string "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "string"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 418
    const-string v23, "good sized"

    const-wide v24, 0x7fffffffffffffffL

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v12, v0, v1, v2}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;J)Ltwitter4j/internal/org/json/JSONObject;

    .line 419
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 421
    new-instance v5, Ltwitter4j/internal/org/json/JSONArray;

    .end local v5    # "a":Ltwitter4j/internal/org/json/JSONArray;
    const-string v23, "[2147483647, 2147483648, 9223372036854775807, 9223372036854775808]"

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 422
    .restart local v5    # "a":Ltwitter4j/internal/org/json/JSONArray;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ltwitter4j/internal/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 424
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "\nKeys: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v12}, Ltwitter4j/internal/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    .line 426
    .local v11, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 427
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "s":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .line 428
    .restart local v21    # "s":Ljava/lang/String;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ": "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 620
    .end local v5    # "a":Ltwitter4j/internal/org/json/JSONArray;
    .end local v7    # "ar":[I
    .end local v10    # "i":I
    .end local v11    # "it":Ljava/util/Iterator;
    .end local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    .end local v14    # "ja":Ltwitter4j/internal/org/json/JSONArray;
    .end local v16    # "jj":Ltwitter4j/internal/org/json/JSONStringer;
    .end local v18    # "jt":Ltwitter4j/internal/org/json/JSONTokener;
    .end local v21    # "s":Ljava/lang/String;
    .end local v22    # "sa":[Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 621
    .local v9, "e":Ljava/lang/Exception;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 623
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 432
    .restart local v5    # "a":Ltwitter4j/internal/org/json/JSONArray;
    .restart local v7    # "ar":[I
    .restart local v10    # "i":I
    .restart local v11    # "it":Ljava/util/Iterator;
    .restart local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    .restart local v14    # "ja":Ltwitter4j/internal/org/json/JSONArray;
    .restart local v16    # "jj":Ltwitter4j/internal/org/json/JSONStringer;
    .restart local v18    # "jt":Ltwitter4j/internal/org/json/JSONTokener;
    .restart local v21    # "s":Ljava/lang/String;
    .restart local v22    # "sa":[Ljava/lang/String;
    :cond_1
    :try_start_1
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "\naccumulate: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 433
    new-instance v12, Ltwitter4j/internal/org/json/JSONObject;

    .end local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    invoke-direct {v12}, Ltwitter4j/internal/org/json/JSONObject;-><init>()V

    .line 434
    .restart local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    const-string v23, "stooge"

    const-string v24, "Curly"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 435
    const-string v23, "stooge"

    const-string v24, "Larry"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 436
    const-string v23, "stooge"

    const-string v24, "Moe"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 437
    const-string v23, "stooge"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v5

    .line 438
    const/16 v23, 0x5

    const-string v24, "Shemp"

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Ltwitter4j/internal/org/json/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 439
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 441
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "\nwrite:"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 442
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/io/StringWriter;

    invoke-direct/range {v24 .. v24}, Ljava/io/StringWriter;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->write(Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 444
    const-string v21, "<xml empty><a></a><a>1</a><a>22</a><a>333</a></xml>"

    .line 445
    invoke-static/range {v21 .. v21}, Ltwitter4j/internal/org/json/XML;->toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    .line 446
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 447
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 449
    const-string v21, "<book><chapter>Content of the first chapter</chapter><chapter>Content of the second chapter      <chapter>Content of the first subchapter</chapter>      <chapter>Content of the second subchapter</chapter></chapter><chapter>Third Chapter</chapter></book>"

    .line 450
    invoke-static/range {v21 .. v21}, Ltwitter4j/internal/org/json/XML;->toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    .line 451
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 452
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 454
    invoke-static/range {v21 .. v21}, Ltwitter4j/internal/org/json/JSONML;->toJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v5

    .line 455
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ltwitter4j/internal/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 456
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v5}, Ltwitter4j/internal/org/json/JSONML;->toString(Ltwitter4j/internal/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 458
    const/4 v8, 0x0

    .line 459
    .local v8, "c":Ljava/util/Collection;
    const/16 v19, 0x0

    .line 461
    .local v19, "m":Ljava/util/Map;
    new-instance v12, Ltwitter4j/internal/org/json/JSONObject;

    .end local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 462
    .restart local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    new-instance v5, Ltwitter4j/internal/org/json/JSONArray;

    .end local v5    # "a":Ltwitter4j/internal/org/json/JSONArray;
    invoke-direct {v5, v8}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 463
    .restart local v5    # "a":Ltwitter4j/internal/org/json/JSONArray;
    const-string v23, "stooge"

    const-string v24, "Joe DeRita"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->append(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 464
    const-string v23, "stooge"

    const-string v24, "Shemp"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->append(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 465
    const-string v23, "stooges"

    const-string v24, "Curly"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 466
    const-string v23, "stooges"

    const-string v24, "Larry"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 467
    const-string v23, "stooges"

    const-string v24, "Moe"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 468
    const-string v23, "stoogearray"

    const-string v24, "stooges"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 469
    const-string v23, "map"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/util/Map;)Ltwitter4j/internal/org/json/JSONObject;

    .line 470
    const-string v23, "collection"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v8}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/util/Collection;)Ltwitter4j/internal/org/json/JSONObject;

    .line 471
    const-string v23, "array"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v5}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 472
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/util/Map;)Ltwitter4j/internal/org/json/JSONArray;

    .line 473
    invoke-virtual {v5, v8}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/util/Collection;)Ltwitter4j/internal/org/json/JSONArray;

    .line 474
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 476
    const-string v21, "{plist=Apple; AnimalSmells = { pig = piggish; lamb = lambish; worm = wormy; }; AnimalSounds = { pig = oink; lamb = baa; worm = baa;  Lisa = \"Why is the worm talking like a lamb?\" } ; AnimalColors = { pig = pink; lamb = black; worm = pink; } } "

    .line 477
    new-instance v12, Ltwitter4j/internal/org/json/JSONObject;

    .end local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 478
    .restart local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 480
    const-string v21, " (\"San Francisco\", \"New York\", \"Seoul\", \"London\", \"Seattle\", \"Shanghai\")"

    .line 481
    new-instance v5, Ltwitter4j/internal/org/json/JSONArray;

    .end local v5    # "a":Ltwitter4j/internal/org/json/JSONArray;
    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 482
    .restart local v5    # "a":Ltwitter4j/internal/org/json/JSONArray;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ltwitter4j/internal/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 484
    const-string v21, "<a ichi=\'1\' ni=\'2\'><b>The content of b</b> and <c san=\'3\'>The content of c</c><d>do</d><e></e><d>re</d><f/><d>mi</d></a>"

    .line 485
    invoke-static/range {v21 .. v21}, Ltwitter4j/internal/org/json/XML;->toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    .line 487
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 488
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v12}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 489
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 490
    invoke-static/range {v21 .. v21}, Ltwitter4j/internal/org/json/JSONML;->toJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v14

    .line 491
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Ltwitter4j/internal/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 492
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v14}, Ltwitter4j/internal/org/json/JSONML;->toString(Ltwitter4j/internal/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 493
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 496
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "\nTesting Exceptions: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 498
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 500
    :try_start_2
    new-instance v6, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v6}, Ltwitter4j/internal/org/json/JSONArray;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 501
    .end local v5    # "a":Ltwitter4j/internal/org/json/JSONArray;
    .local v6, "a":Ltwitter4j/internal/org/json/JSONArray;
    const-wide/high16 v23, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :try_start_3
    move-wide/from16 v0, v23

    invoke-virtual {v6, v0, v1}, Ltwitter4j/internal/org/json/JSONArray;->put(D)Ltwitter4j/internal/org/json/JSONArray;

    .line 502
    const-wide/high16 v23, 0x7ff8000000000000L    # NaN

    move-wide/from16 v0, v23

    invoke-virtual {v6, v0, v1}, Ltwitter4j/internal/org/json/JSONArray;->put(D)Ltwitter4j/internal/org/json/JSONArray;

    .line 503
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6}, Ltwitter4j/internal/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_15

    .line 507
    :goto_2
    :try_start_4
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 509
    :try_start_5
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "stooge"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/io/PrintStream;->println(D)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 513
    :goto_3
    :try_start_6
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 515
    :try_start_7
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "howard"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/io/PrintStream;->println(D)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 519
    :goto_4
    :try_start_8
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 521
    :try_start_9
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x0

    const-string v25, "howard"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 525
    :goto_5
    :try_start_a
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 527
    :try_start_b
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ltwitter4j/internal/org/json/JSONArray;->getDouble(I)D

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/io/PrintStream;->println(D)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 531
    :goto_6
    :try_start_c
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 533
    :try_start_d
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 537
    :goto_7
    :try_start_e
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 539
    :try_start_f
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide/high16 v24, 0x7ff8000000000000L    # NaN

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Ltwitter4j/internal/org/json/JSONArray;->put(D)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 543
    :goto_8
    :try_start_10
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    .line 545
    :try_start_11
    const-string v23, "<a><b>    "

    invoke-static/range {v23 .. v23}, Ltwitter4j/internal/org/json/XML;->toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    move-result-object v12

    .line 549
    :goto_9
    :try_start_12
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    .line 551
    :try_start_13
    const-string v23, "<a></b>    "

    invoke-static/range {v23 .. v23}, Ltwitter4j/internal/org/json/XML;->toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    move-result-object v12

    .line 555
    :goto_a
    :try_start_14
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    .line 557
    :try_start_15
    const-string v23, "<a></a    "

    invoke-static/range {v23 .. v23}, Ltwitter4j/internal/org/json/XML;->toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    move-result-object v12

    move-object v13, v12

    .line 561
    .end local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    .restart local v13    # "j":Ltwitter4j/internal/org/json/JSONObject;
    :goto_b
    :try_start_16
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    .line 563
    :try_start_17
    new-instance v15, Ltwitter4j/internal/org/json/JSONArray;

    new-instance v23, Ljava/lang/Object;

    invoke-direct/range {v23 .. v23}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v23

    invoke-direct {v15, v0}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b

    .line 564
    .end local v14    # "ja":Ltwitter4j/internal/org/json/JSONArray;
    .local v15, "ja":Ltwitter4j/internal/org/json/JSONArray;
    :try_start_18
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ltwitter4j/internal/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_14

    move-object v14, v15

    .line 569
    .end local v15    # "ja":Ltwitter4j/internal/org/json/JSONArray;
    .restart local v14    # "ja":Ltwitter4j/internal/org/json/JSONArray;
    :goto_c
    :try_start_19
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0

    .line 571
    :try_start_1a
    const-string v21, "[)"

    .line 572
    new-instance v5, Ltwitter4j/internal/org/json/JSONArray;

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c

    .line 573
    .end local v6    # "a":Ltwitter4j/internal/org/json/JSONArray;
    .restart local v5    # "a":Ltwitter4j/internal/org/json/JSONArray;
    :try_start_1b
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ltwitter4j/internal/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_13

    .line 578
    :goto_d
    :try_start_1c
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0

    .line 580
    :try_start_1d
    const-string v21, "<xml"

    .line 581
    invoke-static/range {v21 .. v21}, Ltwitter4j/internal/org/json/JSONML;->toJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v14

    .line 582
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Ltwitter4j/internal/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_d

    .line 587
    :goto_e
    :try_start_1e
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0

    .line 589
    :try_start_1f
    const-string v21, "<right></wrong>"

    .line 590
    invoke-static/range {v21 .. v21}, Ltwitter4j/internal/org/json/JSONML;->toJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v14

    .line 591
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Ltwitter4j/internal/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_e

    .line 596
    :goto_f
    :try_start_20
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_0

    .line 598
    :try_start_21
    const-string v21, "{\"koda\": true, \"koda\": true}"

    .line 599
    new-instance v12, Ltwitter4j/internal/org/json/JSONObject;

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_f

    .line 600
    .end local v13    # "j":Ltwitter4j/internal/org/json/JSONObject;
    .restart local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    :try_start_22
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_12

    .line 605
    :goto_10
    :try_start_23
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v24, "Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_0

    .line 607
    :try_start_24
    new-instance v17, Ltwitter4j/internal/org/json/JSONStringer;

    invoke-direct/range {v17 .. v17}, Ltwitter4j/internal/org/json/JSONStringer;-><init>()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_10

    .line 608
    .end local v16    # "jj":Ltwitter4j/internal/org/json/JSONStringer;
    .local v17, "jj":Ltwitter4j/internal/org/json/JSONStringer;
    :try_start_25
    invoke-virtual/range {v17 .. v17}, Ltwitter4j/internal/org/json/JSONStringer;->object()Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    const-string v24, "bosanda"

    invoke-virtual/range {v23 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->key(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    const-string v24, "MARIE HAA\'S"

    invoke-virtual/range {v23 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->value(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    const-string v24, "bosanda"

    invoke-virtual/range {v23 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->key(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    const-string v24, "MARIE HAA\\\'S"

    invoke-virtual/range {v23 .. v24}, Ltwitter4j/internal/org/json/JSONWriter;->value(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ltwitter4j/internal/org/json/JSONWriter;->endObject()Ltwitter4j/internal/org/json/JSONWriter;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 616
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_11

    move-object/from16 v16, v17

    .line 619
    .end local v17    # "jj":Ltwitter4j/internal/org/json/JSONStringer;
    .restart local v16    # "jj":Ltwitter4j/internal/org/json/JSONStringer;
    goto/16 :goto_1

    .line 504
    :catch_1
    move-exception v9

    .line 505
    .restart local v9    # "e":Ljava/lang/Exception;
    :goto_11
    :try_start_26
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    move-object v6, v5

    .end local v5    # "a":Ltwitter4j/internal/org/json/JSONArray;
    .restart local v6    # "a":Ltwitter4j/internal/org/json/JSONArray;
    goto/16 :goto_2

    .line 510
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v9

    .line 511
    .restart local v9    # "e":Ljava/lang/Exception;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 516
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    .line 517
    .restart local v9    # "e":Ljava/lang/Exception;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 522
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v9

    .line 523
    .restart local v9    # "e":Ljava/lang/Exception;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 528
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v9

    .line 529
    .restart local v9    # "e":Ljava/lang/Exception;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 534
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v9

    .line 535
    .restart local v9    # "e":Ljava/lang/Exception;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 540
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v9

    .line 541
    .restart local v9    # "e":Ljava/lang/Exception;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 546
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v9

    .line 547
    .restart local v9    # "e":Ljava/lang/Exception;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 552
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v9

    .line 553
    .restart local v9    # "e":Ljava/lang/Exception;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 558
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v9

    .line 559
    .restart local v9    # "e":Ljava/lang/Exception;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    move-object v13, v12

    .end local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    .restart local v13    # "j":Ltwitter4j/internal/org/json/JSONObject;
    goto/16 :goto_b

    .line 565
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v9

    .line 566
    .restart local v9    # "e":Ljava/lang/Exception;
    :goto_12
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 574
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_c
    move-exception v9

    move-object v5, v6

    .line 575
    .end local v6    # "a":Ltwitter4j/internal/org/json/JSONArray;
    .restart local v5    # "a":Ltwitter4j/internal/org/json/JSONArray;
    .restart local v9    # "e":Ljava/lang/Exception;
    :goto_13
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 583
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_d
    move-exception v9

    .line 584
    .restart local v9    # "e":Ljava/lang/Exception;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 592
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_e
    move-exception v9

    .line 593
    .restart local v9    # "e":Ljava/lang/Exception;
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 601
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_f
    move-exception v9

    move-object v12, v13

    .line 602
    .end local v13    # "j":Ltwitter4j/internal/org/json/JSONObject;
    .restart local v9    # "e":Ljava/lang/Exception;
    .restart local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    :goto_14
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 617
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_10
    move-exception v9

    .line 618
    .restart local v9    # "e":Ljava/lang/Exception;
    :goto_15
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_0

    goto/16 :goto_1

    .line 617
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v16    # "jj":Ltwitter4j/internal/org/json/JSONStringer;
    .restart local v17    # "jj":Ltwitter4j/internal/org/json/JSONStringer;
    :catch_11
    move-exception v9

    move-object/from16 v16, v17

    .end local v17    # "jj":Ltwitter4j/internal/org/json/JSONStringer;
    .restart local v16    # "jj":Ltwitter4j/internal/org/json/JSONStringer;
    goto :goto_15

    .line 601
    :catch_12
    move-exception v9

    goto :goto_14

    .line 574
    .end local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    .restart local v13    # "j":Ltwitter4j/internal/org/json/JSONObject;
    :catch_13
    move-exception v9

    goto :goto_13

    .line 565
    .end local v5    # "a":Ltwitter4j/internal/org/json/JSONArray;
    .end local v14    # "ja":Ltwitter4j/internal/org/json/JSONArray;
    .restart local v6    # "a":Ltwitter4j/internal/org/json/JSONArray;
    .restart local v15    # "ja":Ltwitter4j/internal/org/json/JSONArray;
    :catch_14
    move-exception v9

    move-object v14, v15

    .end local v15    # "ja":Ltwitter4j/internal/org/json/JSONArray;
    .restart local v14    # "ja":Ltwitter4j/internal/org/json/JSONArray;
    goto :goto_12

    .line 504
    .end local v13    # "j":Ltwitter4j/internal/org/json/JSONObject;
    .restart local v12    # "j":Ltwitter4j/internal/org/json/JSONObject;
    :catch_15
    move-exception v9

    move-object v5, v6

    .end local v6    # "a":Ltwitter4j/internal/org/json/JSONArray;
    .restart local v5    # "a":Ltwitter4j/internal/org/json/JSONArray;
    goto/16 :goto_11

    .line 191
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method
