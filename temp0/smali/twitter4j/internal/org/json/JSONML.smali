.class public Ltwitter4j/internal/org/json/JSONML;
.super Ljava/lang/Object;
.source "JSONML.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parse(Ltwitter4j/internal/org/json/XMLTokener;ZLtwitter4j/internal/org/json/JSONArray;)Ljava/lang/Object;
    .locals 12
    .param p0, "x"    # Ltwitter4j/internal/org/json/XMLTokener;
    .param p1, "arrayForm"    # Z
    .param p2, "ja"    # Ltwitter4j/internal/org/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x5b

    const/16 v10, 0x2d

    .line 52
    const/4 v2, 0x0

    .line 54
    .local v2, "closeTag":Ljava/lang/String;
    const/4 v4, 0x0

    .line 55
    .local v4, "newja":Ltwitter4j/internal/org/json/JSONArray;
    const/4 v5, 0x0

    .line 57
    .local v5, "newjo":Ltwitter4j/internal/org/json/JSONObject;
    const/4 v6, 0x0

    .line 66
    .local v6, "tagName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v7

    .line 67
    .local v7, "token":Ljava/lang/Object;
    sget-object v8, Ltwitter4j/internal/org/json/XML;->LT:Ljava/lang/Character;

    if-ne v7, v8, :cond_20

    .line 68
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v7

    .line 69
    instance-of v8, v7, Ljava/lang/Character;

    if-eqz v8, :cond_d

    .line 70
    sget-object v8, Ltwitter4j/internal/org/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v7, v8, :cond_2

    .line 74
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v7

    .line 75
    instance-of v8, v7, Ljava/lang/String;

    if-nez v8, :cond_1

    .line 76
    new-instance v8, Ltwitter4j/internal/org/json/JSONException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Expected a closing name instead of \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\'."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 80
    :cond_1
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ltwitter4j/internal/org/json/XML;->GT:Ljava/lang/Character;

    if-eq v8, v9, :cond_19

    .line 81
    const-string v8, "Misshaped close tag"

    invoke-virtual {p0, v8}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v8

    throw v8

    .line 84
    :cond_2
    sget-object v8, Ltwitter4j/internal/org/json/XML;->BANG:Ljava/lang/Character;

    if-ne v7, v8, :cond_b

    .line 88
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->next()C

    move-result v1

    .line 89
    .local v1, "c":C
    if-ne v1, v10, :cond_4

    .line 90
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->next()C

    move-result v8

    if-ne v8, v10, :cond_3

    .line 91
    const-string v8, "-->"

    invoke-virtual {p0, v8}, Ltwitter4j/internal/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    .line 93
    :cond_3
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->back()V

    goto :goto_0

    .line 94
    :cond_4
    if-ne v1, v11, :cond_6

    .line 95
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v7

    .line 96
    const-string v8, "CDATA"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->next()C

    move-result v8

    if-ne v8, v11, :cond_5

    .line 97
    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    goto :goto_0

    .line 101
    :cond_5
    const-string v8, "Expected \'CDATA[\'"

    invoke-virtual {p0, v8}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v8

    throw v8

    .line 104
    :cond_6
    const/4 v3, 0x1

    .line 106
    .local v3, "i":I
    :cond_7
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object v7

    .line 107
    if-nez v7, :cond_8

    .line 108
    const-string v8, "Missing \'>\' after \'<!\'."

    invoke-virtual {p0, v8}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v8

    throw v8

    .line 109
    :cond_8
    sget-object v8, Ltwitter4j/internal/org/json/XML;->LT:Ljava/lang/Character;

    if-ne v7, v8, :cond_a

    .line 110
    add-int/lit8 v3, v3, 0x1

    .line 114
    :cond_9
    :goto_1
    if-gtz v3, :cond_7

    goto/16 :goto_0

    .line 111
    :cond_a
    sget-object v8, Ltwitter4j/internal/org/json/XML;->GT:Ljava/lang/Character;

    if-ne v7, v8, :cond_9

    .line 112
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 116
    .end local v1    # "c":C
    .end local v3    # "i":I
    :cond_b
    sget-object v8, Ltwitter4j/internal/org/json/XML;->QUEST:Ljava/lang/Character;

    if-ne v7, v8, :cond_c

    .line 120
    const-string v8, "?>"

    invoke-virtual {p0, v8}, Ltwitter4j/internal/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 122
    :cond_c
    const-string v8, "Misshaped tag"

    invoke-virtual {p0, v8}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v8

    throw v8

    .line 128
    :cond_d
    instance-of v8, v7, Ljava/lang/String;

    if-nez v8, :cond_e

    .line 129
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Bad tagName \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\'."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v8

    throw v8

    :cond_e
    move-object v6, v7

    .line 131
    check-cast v6, Ljava/lang/String;

    .line 132
    new-instance v4, Ltwitter4j/internal/org/json/JSONArray;

    .end local v4    # "newja":Ltwitter4j/internal/org/json/JSONArray;
    invoke-direct {v4}, Ltwitter4j/internal/org/json/JSONArray;-><init>()V

    .line 133
    .restart local v4    # "newja":Ltwitter4j/internal/org/json/JSONArray;
    new-instance v5, Ltwitter4j/internal/org/json/JSONObject;

    .end local v5    # "newjo":Ltwitter4j/internal/org/json/JSONObject;
    invoke-direct {v5}, Ltwitter4j/internal/org/json/JSONObject;-><init>()V

    .line 134
    .restart local v5    # "newjo":Ltwitter4j/internal/org/json/JSONObject;
    if-eqz p1, :cond_10

    .line 135
    invoke-virtual {v4, v6}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 136
    if-eqz p2, :cond_f

    .line 137
    invoke-virtual {p2, v4}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 145
    :cond_f
    :goto_2
    const/4 v7, 0x0

    .line 147
    .end local v7    # "token":Ljava/lang/Object;
    :goto_3
    if-nez v7, :cond_22

    .line 148
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "token":Ljava/lang/Object;
    move-object v0, v7

    .line 150
    .end local v7    # "token":Ljava/lang/Object;
    :goto_4
    if-nez v0, :cond_11

    .line 151
    const-string v8, "Misshaped tag"

    invoke-virtual {p0, v8}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v8

    throw v8

    .line 140
    .restart local v7    # "token":Ljava/lang/Object;
    :cond_10
    const-string v8, "tagName"

    invoke-virtual {v5, v8, v6}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 141
    if-eqz p2, :cond_f

    .line 142
    invoke-virtual {p2, v5}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    goto :goto_2

    .line 153
    .end local v7    # "token":Ljava/lang/Object;
    :cond_11
    instance-of v8, v0, Ljava/lang/String;

    if-nez v8, :cond_13

    .line 175
    if-eqz p1, :cond_12

    invoke-virtual {v5}, Ltwitter4j/internal/org/json/JSONObject;->length()I

    move-result v8

    if-lez v8, :cond_12

    .line 176
    invoke-virtual {v4, v5}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    .line 181
    :cond_12
    sget-object v8, Ltwitter4j/internal/org/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v0, v8, :cond_1b

    .line 182
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ltwitter4j/internal/org/json/XML;->GT:Ljava/lang/Character;

    if-eq v8, v9, :cond_18

    .line 183
    const-string v8, "Misshaped tag"

    invoke-virtual {p0, v8}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v8

    throw v8

    .line 159
    :cond_13
    check-cast v0, Ljava/lang/String;

    .line 160
    .local v0, "attribute":Ljava/lang/String;
    if-nez p1, :cond_15

    const-string v8, "tagName"

    if-eq v0, v8, :cond_14

    const-string v8, "childNode"

    if-ne v0, v8, :cond_15

    .line 161
    :cond_14
    const-string v8, "Reserved attribute."

    invoke-virtual {p0, v8}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v8

    throw v8

    .line 163
    :cond_15
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v7

    .line 164
    .restart local v7    # "token":Ljava/lang/Object;
    sget-object v8, Ltwitter4j/internal/org/json/XML;->EQ:Ljava/lang/Character;

    if-ne v7, v8, :cond_17

    .line 165
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v7

    .line 166
    instance-of v8, v7, Ljava/lang/String;

    if-nez v8, :cond_16

    .line 167
    const-string v8, "Missing value"

    invoke-virtual {p0, v8}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v8

    throw v8

    .line 169
    :cond_16
    check-cast v7, Ljava/lang/String;

    .end local v7    # "token":Ljava/lang/Object;
    invoke-static {v7}, Ltwitter4j/internal/org/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 170
    const/4 v7, 0x0

    .restart local v7    # "token":Ljava/lang/Object;
    goto :goto_3

    .line 172
    :cond_17
    const-string v8, ""

    invoke-virtual {v5, v0, v8}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    goto :goto_3

    .line 185
    .end local v0    # "attribute":Ljava/lang/String;
    .end local v7    # "token":Ljava/lang/Object;
    :cond_18
    if-nez p2, :cond_0

    .line 186
    if-eqz p1, :cond_1a

    move-object v7, v4

    .line 213
    :cond_19
    :goto_5
    return-object v7

    :cond_1a
    move-object v7, v5

    .line 189
    goto :goto_5

    .line 196
    :cond_1b
    sget-object v8, Ltwitter4j/internal/org/json/XML;->GT:Ljava/lang/Character;

    if-eq v0, v8, :cond_1c

    .line 197
    const-string v8, "Misshaped tag"

    invoke-virtual {p0, v8}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v8

    throw v8

    .line 199
    :cond_1c
    invoke-static {p0, p1, v4}, Ltwitter4j/internal/org/json/JSONML;->parse(Ltwitter4j/internal/org/json/XMLTokener;ZLtwitter4j/internal/org/json/JSONArray;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "closeTag":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 200
    .restart local v2    # "closeTag":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1d

    .line 202
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Mismatched \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\' and \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v8

    throw v8

    .line 205
    :cond_1d
    const/4 v6, 0x0

    .line 206
    if-nez p1, :cond_1e

    invoke-virtual {v4}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_1e

    .line 207
    const-string v8, "childNodes"

    invoke-virtual {v5, v8, v4}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 209
    :cond_1e
    if-nez p2, :cond_0

    .line 210
    if-eqz p1, :cond_1f

    move-object v7, v4

    .line 211
    goto :goto_5

    :cond_1f
    move-object v7, v5

    .line 213
    goto :goto_5

    .line 220
    .restart local v7    # "token":Ljava/lang/Object;
    :cond_20
    if-eqz p2, :cond_0

    .line 221
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_21

    check-cast v7, Ljava/lang/String;

    .end local v7    # "token":Ljava/lang/Object;
    invoke-static {v7}, Ltwitter4j/internal/org/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    :cond_21
    invoke-virtual {p2, v7}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    goto/16 :goto_0

    :cond_22
    move-object v0, v7

    goto/16 :goto_4
.end method

.method public static toJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Ltwitter4j/internal/org/json/XMLTokener;

    invoke-direct {v0, p0}, Ltwitter4j/internal/org/json/XMLTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ltwitter4j/internal/org/json/JSONML;->toJSONArray(Ltwitter4j/internal/org/json/XMLTokener;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONArray(Ltwitter4j/internal/org/json/XMLTokener;)Ltwitter4j/internal/org/json/JSONArray;
    .locals 2
    .param p0, "x"    # Ltwitter4j/internal/org/json/XMLTokener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 259
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ltwitter4j/internal/org/json/JSONML;->parse(Ltwitter4j/internal/org/json/XMLTokener;ZLtwitter4j/internal/org/json/JSONArray;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/internal/org/json/JSONArray;

    return-object v0
.end method

.method public static toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 294
    new-instance v0, Ltwitter4j/internal/org/json/XMLTokener;

    invoke-direct {v0, p0}, Ltwitter4j/internal/org/json/XMLTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ltwitter4j/internal/org/json/JSONML;->toJSONObject(Ltwitter4j/internal/org/json/XMLTokener;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONObject(Ltwitter4j/internal/org/json/XMLTokener;)Ltwitter4j/internal/org/json/JSONObject;
    .locals 2
    .param p0, "x"    # Ltwitter4j/internal/org/json/XMLTokener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 278
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ltwitter4j/internal/org/json/JSONML;->parse(Ltwitter4j/internal/org/json/XMLTokener;ZLtwitter4j/internal/org/json/JSONArray;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/internal/org/json/JSONObject;

    return-object v0
.end method

.method public static toString(Ltwitter4j/internal/org/json/JSONArray;)Ljava/lang/String;
    .locals 14
    .param p0, "ja"    # Ltwitter4j/internal/org/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x3c

    const/16 v12, 0x2f

    const/16 v11, 0x22

    const/16 v10, 0x3e

    .line 311
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 317
    .local v6, "sb":Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Ltwitter4j/internal/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 318
    .local v7, "tagName":Ljava/lang/String;
    invoke-static {v7}, Ltwitter4j/internal/org/json/XML;->noSpace(Ljava/lang/String;)V

    .line 319
    invoke-static {v7}, Ltwitter4j/internal/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 320
    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 321
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ltwitter4j/internal/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 324
    .local v0, "e":Ljava/lang/Object;
    instance-of v9, v0, Ltwitter4j/internal/org/json/JSONObject;

    if-eqz v9, :cond_1

    .line 325
    const/4 v1, 0x2

    .local v1, "i":I
    move-object v2, v0

    .line 326
    check-cast v2, Ltwitter4j/internal/org/json/JSONObject;

    .line 330
    .local v2, "jo":Ltwitter4j/internal/org/json/JSONObject;
    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 331
    .local v4, "keys":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 332
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, "k":Ljava/lang/String;
    invoke-static {v3}, Ltwitter4j/internal/org/json/XML;->noSpace(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v2, v3}, Ltwitter4j/internal/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 335
    .local v8, "v":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 336
    const/16 v9, 0x20

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 337
    invoke-static {v3}, Ltwitter4j/internal/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    const/16 v9, 0x3d

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 339
    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 340
    invoke-static {v8}, Ltwitter4j/internal/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 345
    .end local v1    # "i":I
    .end local v2    # "jo":Ltwitter4j/internal/org/json/JSONObject;
    .end local v3    # "k":Ljava/lang/String;
    .end local v4    # "keys":Ljava/util/Iterator;
    .end local v8    # "v":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    .line 350
    .restart local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v5

    .line 351
    .local v5, "length":I
    if-lt v1, v5, :cond_3

    .line 352
    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 353
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 374
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 355
    :cond_3
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 357
    :cond_4
    invoke-virtual {p0, v1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 358
    add-int/lit8 v1, v1, 0x1

    .line 359
    if-eqz v0, :cond_5

    .line 360
    instance-of v9, v0, Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 361
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ltwitter4j/internal/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    :cond_5
    :goto_2
    if-lt v1, v5, :cond_4

    .line 369
    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 370
    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 371
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 362
    :cond_6
    instance-of v9, v0, Ltwitter4j/internal/org/json/JSONObject;

    if-eqz v9, :cond_7

    move-object v9, v0

    .line 363
    check-cast v9, Ltwitter4j/internal/org/json/JSONObject;

    invoke-static {v9}, Ltwitter4j/internal/org/json/JSONML;->toString(Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 364
    :cond_7
    instance-of v9, v0, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v9, :cond_5

    move-object v9, v0

    .line 365
    check-cast v9, Ltwitter4j/internal/org/json/JSONArray;

    invoke-static {v9}, Ltwitter4j/internal/org/json/JSONML;->toString(Ltwitter4j/internal/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public static toString(Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;
    .locals 14
    .param p0, "jo"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x3c

    const/16 v12, 0x2f

    const/16 v11, 0x22

    const/16 v10, 0x3e

    .line 387
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 399
    .local v6, "sb":Ljava/lang/StringBuffer;
    const-string v9, "tagName"

    invoke-virtual {p0, v9}, Ltwitter4j/internal/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 400
    .local v7, "tagName":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 401
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ltwitter4j/internal/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 453
    :goto_0
    return-object v9

    .line 403
    :cond_0
    invoke-static {v7}, Ltwitter4j/internal/org/json/XML;->noSpace(Ljava/lang/String;)V

    .line 404
    invoke-static {v7}, Ltwitter4j/internal/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 405
    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 406
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 411
    .local v4, "keys":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 412
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, "k":Ljava/lang/String;
    const-string v9, "tagName"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "childNodes"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 414
    invoke-static {v3}, Ltwitter4j/internal/org/json/XML;->noSpace(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0, v3}, Ltwitter4j/internal/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 416
    .local v8, "v":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 417
    const/16 v9, 0x20

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 418
    invoke-static {v3}, Ltwitter4j/internal/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    const/16 v9, 0x3d

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 420
    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 421
    invoke-static {v8}, Ltwitter4j/internal/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 429
    .end local v3    # "k":Ljava/lang/String;
    .end local v8    # "v":Ljava/lang/String;
    :cond_2
    const-string v9, "childNodes"

    invoke-virtual {p0, v9}, Ltwitter4j/internal/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v2

    .line 430
    .local v2, "ja":Ltwitter4j/internal/org/json/JSONArray;
    if-nez v2, :cond_3

    .line 431
    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 432
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 453
    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 434
    :cond_3
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 435
    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v5

    .line 436
    .local v5, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v5, :cond_7

    .line 437
    invoke-virtual {v2, v1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 438
    .local v0, "e":Ljava/lang/Object;
    if-eqz v0, :cond_4

    .line 439
    instance-of v9, v0, Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 440
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ltwitter4j/internal/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    .end local v0    # "e":Ljava/lang/Object;
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 441
    .restart local v0    # "e":Ljava/lang/Object;
    :cond_5
    instance-of v9, v0, Ltwitter4j/internal/org/json/JSONObject;

    if-eqz v9, :cond_6

    .line 442
    check-cast v0, Ltwitter4j/internal/org/json/JSONObject;

    .end local v0    # "e":Ljava/lang/Object;
    invoke-static {v0}, Ltwitter4j/internal/org/json/JSONML;->toString(Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 443
    .restart local v0    # "e":Ljava/lang/Object;
    :cond_6
    instance-of v9, v0, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v9, :cond_4

    .line 444
    check-cast v0, Ltwitter4j/internal/org/json/JSONArray;

    .end local v0    # "e":Ljava/lang/Object;
    invoke-static {v0}, Ltwitter4j/internal/org/json/JSONML;->toString(Ltwitter4j/internal/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 448
    :cond_7
    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 449
    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 450
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
