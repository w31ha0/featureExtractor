.class public Ltwitter4j/internal/org/json/XML;
.super Ljava/lang/Object;
.source "XML.java"


# static fields
.field public static final AMP:Ljava/lang/Character;

.field public static final APOS:Ljava/lang/Character;

.field public static final BANG:Ljava/lang/Character;

.field public static final EQ:Ljava/lang/Character;

.field public static final GT:Ljava/lang/Character;

.field public static final LT:Ljava/lang/Character;

.field public static final QUEST:Ljava/lang/Character;

.field public static final QUOT:Ljava/lang/Character;

.field public static final SLASH:Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x26

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Ltwitter4j/internal/org/json/XML;->AMP:Ljava/lang/Character;

    .line 42
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Ltwitter4j/internal/org/json/XML;->APOS:Ljava/lang/Character;

    .line 45
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Ltwitter4j/internal/org/json/XML;->BANG:Ljava/lang/Character;

    .line 48
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3d

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Ltwitter4j/internal/org/json/XML;->EQ:Ljava/lang/Character;

    .line 51
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3e

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Ltwitter4j/internal/org/json/XML;->GT:Ljava/lang/Character;

    .line 54
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Ltwitter4j/internal/org/json/XML;->LT:Ljava/lang/Character;

    .line 57
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3f

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Ltwitter4j/internal/org/json/XML;->QUEST:Ljava/lang/Character;

    .line 60
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Ltwitter4j/internal/org/json/XML;->QUOT:Ljava/lang/Character;

    .line 63
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Ltwitter4j/internal/org/json/XML;->SLASH:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 79
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 80
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 94
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 78
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :sswitch_0
    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 85
    :sswitch_1
    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 88
    :sswitch_2
    const-string v4, "&gt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 91
    :sswitch_3
    const-string v4, "&quot;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 97
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 80
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public static noSpace(Ljava/lang/String;)V
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 108
    .local v1, "length":I
    if-nez v1, :cond_0

    .line 109
    new-instance v2, Ltwitter4j/internal/org/json/JSONException;

    const-string v3, "Empty string."

    invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 112
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    new-instance v2, Ltwitter4j/internal/org/json/JSONException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\' contains a space character."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_2
    return-void
.end method

.method private static parse(Ltwitter4j/internal/org/json/XMLTokener;Ltwitter4j/internal/org/json/JSONObject;Ljava/lang/String;)Z
    .locals 11
    .param p0, "x"    # Ltwitter4j/internal/org/json/XMLTokener;
    .param p1, "context"    # Ltwitter4j/internal/org/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x5b

    const/16 v9, 0x2d

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 132
    const/4 v3, 0x0

    .line 146
    .local v3, "o":Ltwitter4j/internal/org/json/JSONObject;
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v5

    .line 150
    .local v5, "t":Ljava/lang/Object;
    sget-object v8, Ltwitter4j/internal/org/json/XML;->BANG:Ljava/lang/Character;

    if-ne v5, v8, :cond_9

    .line 151
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->next()C

    move-result v0

    .line 152
    .local v0, "c":C
    if-ne v0, v9, :cond_4

    .line 153
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->next()C

    move-result v7

    if-ne v7, v9, :cond_1

    .line 154
    const-string v7, "-->"

    invoke-virtual {p0, v7}, Ltwitter4j/internal/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    .line 272
    .end local v0    # "c":C
    .end local v5    # "t":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v6

    .line 157
    .restart local v0    # "c":C
    .restart local v5    # "t":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->back()V

    .line 171
    :cond_2
    const/4 v1, 0x1

    .line 173
    .local v1, "i":I
    :cond_3
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object v5

    .line 174
    if-nez v5, :cond_6

    .line 175
    const-string v6, "Missing \'>\' after \'<!\'."

    invoke-virtual {p0, v6}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v6

    throw v6

    .line 158
    .end local v1    # "i":I
    :cond_4
    if-ne v0, v10, :cond_2

    .line 159
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v5

    .line 160
    const-string v7, "CDATA"

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 161
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->next()C

    move-result v7

    if-ne v7, v10, :cond_5

    .line 162
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 164
    const-string v7, "content"

    invoke-virtual {p1, v7, v4}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    goto :goto_0

    .line 169
    .end local v4    # "s":Ljava/lang/String;
    :cond_5
    const-string v6, "Expected \'CDATA[\'"

    invoke-virtual {p0, v6}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v6

    throw v6

    .line 176
    .restart local v1    # "i":I
    :cond_6
    sget-object v7, Ltwitter4j/internal/org/json/XML;->LT:Ljava/lang/Character;

    if-ne v5, v7, :cond_8

    .line 177
    add-int/lit8 v1, v1, 0x1

    .line 181
    :cond_7
    :goto_1
    if-gtz v1, :cond_3

    goto :goto_0

    .line 178
    :cond_8
    sget-object v7, Ltwitter4j/internal/org/json/XML;->GT:Ljava/lang/Character;

    if-ne v5, v7, :cond_7

    .line 179
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 183
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_9
    sget-object v8, Ltwitter4j/internal/org/json/XML;->QUEST:Ljava/lang/Character;

    if-ne v5, v8, :cond_a

    .line 187
    const-string v7, "?>"

    invoke-virtual {p0, v7}, Ltwitter4j/internal/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    goto :goto_0

    .line 189
    :cond_a
    sget-object v8, Ltwitter4j/internal/org/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v5, v8, :cond_e

    .line 193
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v5

    .line 194
    if-nez p2, :cond_b

    .line 195
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Mismatched close tag"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v6

    throw v6

    .line 197
    :cond_b
    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 198
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Mismatched "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v6

    throw v6

    .line 200
    :cond_c
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v6

    sget-object v8, Ltwitter4j/internal/org/json/XML;->GT:Ljava/lang/Character;

    if-eq v6, v8, :cond_d

    .line 201
    const-string v6, "Misshaped close tag"

    invoke-virtual {p0, v6}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v6

    throw v6

    :cond_d
    move v6, v7

    .line 203
    goto/16 :goto_0

    .line 205
    :cond_e
    instance-of v8, v5, Ljava/lang/Character;

    if-eqz v8, :cond_f

    .line 206
    const-string v6, "Misshaped tag"

    invoke-virtual {p0, v6}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v6

    throw v6

    :cond_f
    move-object v2, v5

    .line 211
    check-cast v2, Ljava/lang/String;

    .line 212
    .local v2, "n":Ljava/lang/String;
    const/4 v5, 0x0

    .line 213
    new-instance v3, Ltwitter4j/internal/org/json/JSONObject;

    .end local v3    # "o":Ltwitter4j/internal/org/json/JSONObject;
    invoke-direct {v3}, Ltwitter4j/internal/org/json/JSONObject;-><init>()V

    .line 215
    .end local v5    # "t":Ljava/lang/Object;
    .restart local v3    # "o":Ltwitter4j/internal/org/json/JSONObject;
    :goto_2
    if-nez v5, :cond_1b

    .line 216
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "t":Ljava/lang/Object;
    move-object v4, v5

    .line 221
    .end local v5    # "t":Ljava/lang/Object;
    :goto_3
    instance-of v8, v4, Ljava/lang/String;

    if-eqz v8, :cond_12

    .line 222
    check-cast v4, Ljava/lang/String;

    .line 223
    .restart local v4    # "s":Ljava/lang/String;
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v5

    .line 224
    .restart local v5    # "t":Ljava/lang/Object;
    sget-object v8, Ltwitter4j/internal/org/json/XML;->EQ:Ljava/lang/Character;

    if-ne v5, v8, :cond_11

    .line 225
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v5

    .line 226
    instance-of v8, v5, Ljava/lang/String;

    if-nez v8, :cond_10

    .line 227
    const-string v6, "Missing value"

    invoke-virtual {p0, v6}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v6

    throw v6

    .line 229
    :cond_10
    check-cast v5, Ljava/lang/String;

    .end local v5    # "t":Ljava/lang/Object;
    invoke-static {v5}, Ltwitter4j/internal/org/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    .line 230
    const/4 v5, 0x0

    .restart local v5    # "t":Ljava/lang/Object;
    goto :goto_2

    .line 232
    :cond_11
    const-string v8, ""

    invoke-virtual {v3, v4, v8}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    goto :goto_2

    .line 237
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "t":Ljava/lang/Object;
    :cond_12
    sget-object v8, Ltwitter4j/internal/org/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v4, v8, :cond_14

    .line 238
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ltwitter4j/internal/org/json/XML;->GT:Ljava/lang/Character;

    if-eq v7, v8, :cond_13

    .line 239
    const-string v6, "Misshaped tag"

    invoke-virtual {p0, v6}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v6

    throw v6

    .line 241
    :cond_13
    invoke-virtual {p1, v2, v3}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    goto/16 :goto_0

    .line 246
    :cond_14
    sget-object v8, Ltwitter4j/internal/org/json/XML;->GT:Ljava/lang/Character;

    if-ne v4, v8, :cond_1a

    .line 248
    :cond_15
    :goto_4
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v5

    .line 249
    .restart local v5    # "t":Ljava/lang/Object;
    if-nez v5, :cond_16

    .line 250
    if-eqz v2, :cond_0

    .line 251
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unclosed tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v6

    throw v6

    .line 254
    :cond_16
    instance-of v8, v5, Ljava/lang/String;

    if-eqz v8, :cond_17

    move-object v4, v5

    .line 255
    check-cast v4, Ljava/lang/String;

    .line 256
    .restart local v4    # "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_15

    .line 257
    const-string v8, "content"

    invoke-static {v4}, Ltwitter4j/internal/org/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    goto :goto_4

    .line 262
    .end local v4    # "s":Ljava/lang/String;
    :cond_17
    sget-object v8, Ltwitter4j/internal/org/json/XML;->LT:Ljava/lang/Character;

    if-ne v5, v8, :cond_15

    .line 263
    invoke-static {p0, v3, v2}, Ltwitter4j/internal/org/json/XML;->parse(Ltwitter4j/internal/org/json/XMLTokener;Ltwitter4j/internal/org/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 264
    invoke-virtual {v3}, Ltwitter4j/internal/org/json/JSONObject;->length()I

    move-result v8

    if-nez v8, :cond_18

    .line 265
    const-string v7, ""

    invoke-virtual {p1, v2, v7}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    goto/16 :goto_0

    .line 266
    :cond_18
    invoke-virtual {v3}, Ltwitter4j/internal/org/json/JSONObject;->length()I

    move-result v8

    if-ne v8, v7, :cond_19

    const-string v7, "content"

    invoke-virtual {v3, v7}, Ltwitter4j/internal/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_19

    .line 268
    const-string v7, "content"

    invoke-virtual {v3, v7}, Ltwitter4j/internal/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v2, v7}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    goto/16 :goto_0

    .line 270
    :cond_19
    invoke-virtual {p1, v2, v3}, Ltwitter4j/internal/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    goto/16 :goto_0

    .line 277
    .end local v5    # "t":Ljava/lang/Object;
    :cond_1a
    const-string v6, "Misshaped tag"

    invoke-virtual {p0, v6}, Ltwitter4j/internal/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v6

    throw v6

    :cond_1b
    move-object v4, v5

    goto/16 :goto_3
.end method

.method public static toJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 299
    new-instance v0, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v0}, Ltwitter4j/internal/org/json/JSONObject;-><init>()V

    .line 300
    .local v0, "o":Ltwitter4j/internal/org/json/JSONObject;
    new-instance v1, Ltwitter4j/internal/org/json/XMLTokener;

    invoke-direct {v1, p0}, Ltwitter4j/internal/org/json/XMLTokener;-><init>(Ljava/lang/String;)V

    .line 301
    .local v1, "x":Ltwitter4j/internal/org/json/XMLTokener;
    :goto_0
    invoke-virtual {v1}, Ltwitter4j/internal/org/json/XMLTokener;->more()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ltwitter4j/internal/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ltwitter4j/internal/org/json/XML;->parse(Ltwitter4j/internal/org/json/XMLTokener;Ltwitter4j/internal/org/json/JSONObject;Ljava/lang/String;)Z

    goto :goto_0

    .line 304
    :cond_0
    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x3c

    const/16 v10, 0x3e

    .line 328
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 337
    .local v0, "b":Ljava/lang/StringBuffer;
    instance-of v9, p0, Ltwitter4j/internal/org/json/JSONObject;

    if-eqz v9, :cond_c

    .line 341
    if-eqz p1, :cond_0

    .line 342
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 343
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    move-object v3, p0

    .line 349
    check-cast v3, Ltwitter4j/internal/org/json/JSONObject;

    .line 350
    .local v3, "jo":Ltwitter4j/internal/org/json/JSONObject;
    invoke-virtual {v3}, Ltwitter4j/internal/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 351
    .local v5, "keys":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 352
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 353
    .local v4, "k":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ltwitter4j/internal/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 354
    .local v8, "v":Ljava/lang/Object;
    if-nez v8, :cond_2

    .line 355
    const-string v8, ""

    .line 357
    .end local v8    # "v":Ljava/lang/Object;
    :cond_2
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_4

    move-object v7, v8

    .line 358
    check-cast v7, Ljava/lang/String;

    .line 365
    .local v7, "s":Ljava/lang/String;
    :goto_1
    const-string v9, "content"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 366
    instance-of v9, v8, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v9, :cond_5

    move-object v2, v8

    .line 367
    check-cast v2, Ltwitter4j/internal/org/json/JSONArray;

    .line 368
    .local v2, "ja":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    .line 369
    .local v6, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v6, :cond_1

    .line 370
    if-lez v1, :cond_3

    .line 371
    const/16 v9, 0xa

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 373
    :cond_3
    invoke-virtual {v2, v1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ltwitter4j/internal/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 360
    .end local v1    # "i":I
    .end local v2    # "ja":Ltwitter4j/internal/org/json/JSONArray;
    .end local v6    # "len":I
    .end local v7    # "s":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "s":Ljava/lang/String;
    goto :goto_1

    .line 376
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ltwitter4j/internal/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 381
    :cond_6
    instance-of v9, v8, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v9, :cond_8

    move-object v2, v8

    .line 382
    check-cast v2, Ltwitter4j/internal/org/json/JSONArray;

    .line 383
    .restart local v2    # "ja":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    .line 384
    .restart local v6    # "len":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v6, :cond_1

    .line 385
    invoke-virtual {v2, v1}, Ltwitter4j/internal/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 386
    .restart local v8    # "v":Ljava/lang/Object;
    instance-of v9, v8, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v9, :cond_7

    .line 387
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 388
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 390
    invoke-static {v8}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    const-string v9, "</"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 384
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 395
    :cond_7
    invoke-static {v8, v4}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 398
    .end local v1    # "i":I
    .end local v2    # "ja":Ltwitter4j/internal/org/json/JSONArray;
    .end local v6    # "len":I
    .end local v8    # "v":Ljava/lang/Object;
    :cond_8
    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 399
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 400
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    const-string v9, "/>"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 406
    :cond_9
    invoke-static {v8, v4}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 409
    .end local v4    # "k":Ljava/lang/String;
    .end local v7    # "s":Ljava/lang/String;
    :cond_a
    if-eqz p1, :cond_b

    .line 413
    const-string v9, "</"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 417
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 432
    .end local v3    # "jo":Ltwitter4j/internal/org/json/JSONObject;
    .end local v5    # "keys":Ljava/util/Iterator;
    :goto_5
    return-object v9

    .line 422
    :cond_c
    instance-of v9, p0, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v9, :cond_f

    move-object v2, p0

    .line 423
    check-cast v2, Ltwitter4j/internal/org/json/JSONArray;

    .line 424
    .restart local v2    # "ja":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    .line 425
    .restart local v6    # "len":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, v6, :cond_e

    .line 426
    invoke-virtual {v2, v1}, Ltwitter4j/internal/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v8

    .line 427
    .restart local v8    # "v":Ljava/lang/Object;
    if-nez p1, :cond_d

    const-string v9, "array"

    :goto_7
    invoke-static {v8, v9}, Ltwitter4j/internal/org/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    move-object v9, p1

    .line 427
    goto :goto_7

    .line 429
    .end local v8    # "v":Ljava/lang/Object;
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    .line 431
    .end local v1    # "i":I
    .end local v2    # "ja":Ltwitter4j/internal/org/json/JSONArray;
    .end local v6    # "len":I
    :cond_f
    if-nez p0, :cond_10

    const-string v7, "null"

    .line 432
    .restart local v7    # "s":Ljava/lang/String;
    :goto_8
    if-nez p1, :cond_11

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    .line 431
    .end local v7    # "s":Ljava/lang/String;
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ltwitter4j/internal/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    .line 432
    .restart local v7    # "s":Ljava/lang/String;
    :cond_11
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_12

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "/>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_12
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "</"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5
.end method
