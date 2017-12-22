.class public Lcom/netflix/android/org/json/XML;
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

    sput-object v0, Lcom/netflix/android/org/json/XML;->AMP:Ljava/lang/Character;

    .line 42
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/netflix/android/org/json/XML;->APOS:Ljava/lang/Character;

    .line 45
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/netflix/android/org/json/XML;->BANG:Ljava/lang/Character;

    .line 48
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3d

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/netflix/android/org/json/XML;->EQ:Ljava/lang/Character;

    .line 51
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3e

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/netflix/android/org/json/XML;->GT:Ljava/lang/Character;

    .line 54
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/netflix/android/org/json/XML;->LT:Ljava/lang/Character;

    .line 57
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3f

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/netflix/android/org/json/XML;->QUEST:Ljava/lang/Character;

    .line 60
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/netflix/android/org/json/XML;->QUOT:Ljava/lang/Character;

    .line 63
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/netflix/android/org/json/XML;->SLASH:Ljava/lang/Character;

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
    .locals 4

    .prologue
    .line 77
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 80
    sparse-switch v3, :sswitch_data_0

    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 78
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :sswitch_0
    const-string/jumbo v3, "&amp;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 85
    :sswitch_1
    const-string/jumbo v3, "&lt;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 88
    :sswitch_2
    const-string/jumbo v3, "&gt;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 91
    :sswitch_3
    const-string/jumbo v3, "&quot;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 94
    :sswitch_4
    const-string/jumbo v3, "&apos;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 100
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 80
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_0
        0x27 -> :sswitch_4
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public static noSpace(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 111
    if-nez v1, :cond_0

    .line 112
    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    const-string/jumbo v1, "Empty string."

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' contains a space character."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_2
    return-void
.end method

.method private static parse(Lcom/netflix/android/org/json/XMLTokener;Lcom/netflix/android/org/json/JSONObject;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/16 v6, 0x5b

    const/16 v2, 0x2d

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 134
    .line 149
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    .line 153
    sget-object v1, Lcom/netflix/android/org/json/XML;->BANG:Ljava/lang/Character;

    if-ne v0, v1, :cond_a

    .line 154
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->next()C

    move-result v0

    .line 155
    if-ne v0, v2, :cond_4

    .line 156
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->next()C

    move-result v0

    if-ne v0, v2, :cond_1

    .line 157
    const-string/jumbo v0, "-->"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    move v3, v4

    .line 282
    :cond_0
    :goto_0
    return v3

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->back()V

    :cond_2
    move v0, v3

    .line 176
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object v1

    .line 177
    if-nez v1, :cond_7

    .line 178
    const-string/jumbo v0, "Missing \'>\' after \'<!\'."

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    .line 161
    :cond_4
    if-ne v0, v6, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    .line 163
    const-string/jumbo v1, "CDATA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 164
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->next()C

    move-result v0

    if-ne v0, v6, :cond_6

    .line 165
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 167
    const-string/jumbo v1, "content"

    invoke-virtual {p1, v1, v0}, Lcom/netflix/android/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_5
    move v3, v4

    .line 169
    goto :goto_0

    .line 172
    :cond_6
    const-string/jumbo v0, "Expected \'CDATA[\'"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    .line 179
    :cond_7
    sget-object v2, Lcom/netflix/android/org/json/XML;->LT:Ljava/lang/Character;

    if-ne v1, v2, :cond_9

    .line 180
    add-int/lit8 v0, v0, 0x1

    .line 184
    :cond_8
    :goto_1
    if-gtz v0, :cond_3

    move v3, v4

    .line 185
    goto :goto_0

    .line 181
    :cond_9
    sget-object v2, Lcom/netflix/android/org/json/XML;->GT:Ljava/lang/Character;

    if-ne v1, v2, :cond_8

    .line 182
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 186
    :cond_a
    sget-object v1, Lcom/netflix/android/org/json/XML;->QUEST:Ljava/lang/Character;

    if-ne v0, v1, :cond_b

    .line 190
    const-string/jumbo v0, "?>"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    move v3, v4

    .line 191
    goto :goto_0

    .line 192
    :cond_b
    sget-object v1, Lcom/netflix/android/org/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v0, v1, :cond_e

    .line 196
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    .line 197
    if-nez p2, :cond_c

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Mismatched close tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    .line 200
    :cond_c
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Mismatched "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    .line 203
    :cond_d
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/netflix/android/org/json/XML;->GT:Ljava/lang/Character;

    if-eq v0, v1, :cond_0

    .line 204
    const-string/jumbo v0, "Misshaped close tag"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    .line 208
    :cond_e
    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_f

    .line 209
    const-string/jumbo v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    .line 214
    :cond_f
    check-cast v0, Ljava/lang/String;

    .line 216
    new-instance v6, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v6}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    move-object v1, v5

    .line 218
    :goto_2
    if-nez v1, :cond_10

    .line 219
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    .line 224
    :cond_10
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 225
    check-cast v1, Ljava/lang/String;

    .line 226
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v2

    .line 227
    sget-object v7, Lcom/netflix/android/org/json/XML;->EQ:Ljava/lang/Character;

    if-ne v2, v7, :cond_12

    .line 228
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v2

    .line 229
    instance-of v7, v2, Ljava/lang/String;

    if-nez v7, :cond_11

    .line 230
    const-string/jumbo v0, "Missing value"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    .line 232
    :cond_11
    check-cast v2, Ljava/lang/String;

    .line 233
    invoke-static {v2}, Lcom/netflix/android/org/json/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 232
    invoke-virtual {v6, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    move-object v1, v5

    .line 234
    goto :goto_2

    .line 236
    :cond_12
    const-string/jumbo v7, ""

    invoke-virtual {v6, v1, v7}, Lcom/netflix/android/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    move-object v1, v2

    goto :goto_2

    .line 241
    :cond_13
    sget-object v2, Lcom/netflix/android/org/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v1, v2, :cond_16

    .line 242
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/netflix/android/org/json/XML;->GT:Ljava/lang/Character;

    if-eq v1, v2, :cond_14

    .line 243
    const-string/jumbo v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    .line 245
    :cond_14
    invoke-virtual {v6}, Lcom/netflix/android/org/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_15

    .line 246
    invoke-virtual {p1, v0, v6}, Lcom/netflix/android/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :goto_3
    move v3, v4

    .line 250
    goto/16 :goto_0

    .line 248
    :cond_15
    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_3

    .line 254
    :cond_16
    sget-object v2, Lcom/netflix/android/org/json/XML;->GT:Ljava/lang/Character;

    if-ne v1, v2, :cond_1d

    .line 256
    :cond_17
    :goto_4
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v1

    .line 257
    if-nez v1, :cond_19

    .line 258
    if-eqz v0, :cond_18

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unclosed tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_18
    move v3, v4

    .line 261
    goto/16 :goto_0

    .line 262
    :cond_19
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1a

    .line 263
    check-cast v1, Ljava/lang/String;

    .line 264
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_17

    .line 265
    const-string/jumbo v2, "content"

    .line 266
    invoke-static {v1}, Lcom/netflix/android/org/json/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 265
    invoke-virtual {v6, v2, v1}, Lcom/netflix/android/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_4

    .line 271
    :cond_1a
    sget-object v2, Lcom/netflix/android/org/json/XML;->LT:Ljava/lang/Character;

    if-ne v1, v2, :cond_17

    .line 272
    invoke-static {p0, v6, v0}, Lcom/netflix/android/org/json/XML;->parse(Lcom/netflix/android/org/json/XMLTokener;Lcom/netflix/android/org/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 273
    invoke-virtual {v6}, Lcom/netflix/android/org/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_1b

    .line 274
    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :goto_5
    move v3, v4

    .line 282
    goto/16 :goto_0

    .line 275
    :cond_1b
    invoke-virtual {v6}, Lcom/netflix/android/org/json/JSONObject;->length()I

    move-result v1

    if-ne v1, v3, :cond_1c

    const-string/jumbo v1, "content"

    .line 276
    invoke-virtual {v6, v1}, Lcom/netflix/android/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 277
    const-string/jumbo v1, "content"

    .line 278
    invoke-virtual {v6, v1}, Lcom/netflix/android/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 277
    invoke-virtual {p1, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_5

    .line 280
    :cond_1c
    invoke-virtual {p1, v0, v6}, Lcom/netflix/android/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_5

    .line 287
    :cond_1d
    const-string/jumbo v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0
.end method

.method public static stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 304
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 334
    :cond_0
    :goto_0
    return-object p0

    .line 307
    :cond_1
    const-string/jumbo v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 310
    :cond_2
    const-string/jumbo v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 311
    sget-object p0, Lcom/netflix/android/org/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_0

    .line 318
    :cond_3
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 319
    const/16 v1, 0x2d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 320
    :cond_4
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    move-object p0, v0

    .line 322
    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 327
    :try_start_1
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    move-object p0, v0

    .line 329
    goto :goto_0

    .line 331
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static toJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;
    .locals 3

    .prologue
    .line 353
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 354
    new-instance v1, Lcom/netflix/android/org/json/XMLTokener;

    invoke-direct {v1, p0}, Lcom/netflix/android/org/json/XMLTokener;-><init>(Ljava/lang/String;)V

    .line 355
    :goto_0
    invoke-virtual {v1}, Lcom/netflix/android/org/json/XMLTokener;->more()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "<"

    invoke-virtual {v1, v2}, Lcom/netflix/android/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/netflix/android/org/json/XML;->parse(Lcom/netflix/android/org/json/XMLTokener;Lcom/netflix/android/org/json/JSONObject;Ljava/lang/String;)Z

    goto :goto_0

    .line 358
    :cond_0
    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/netflix/android/org/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x3c

    const/4 v2, 0x0

    const/16 v9, 0x3e

    .line 382
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 391
    instance-of v0, p0, Lcom/netflix/android/org/json/JSONObject;

    if-eqz v0, :cond_c

    .line 395
    if-eqz p1, :cond_0

    .line 396
    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 397
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 403
    :cond_0
    check-cast p0, Lcom/netflix/android/org/json/JSONObject;

    .line 404
    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 405
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 406
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 407
    invoke-virtual {p0, v5}, Lcom/netflix/android/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 408
    if-nez v1, :cond_2

    .line 409
    const-string/jumbo v1, ""

    .line 411
    :cond_2
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 412
    check-cast v0, Ljava/lang/String;

    .line 419
    :cond_3
    const-string/jumbo v0, "content"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 420
    instance-of v0, v1, Lcom/netflix/android/org/json/JSONArray;

    if-eqz v0, :cond_5

    .line 421
    check-cast v1, Lcom/netflix/android/org/json/JSONArray;

    .line 422
    invoke-virtual {v1}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v5

    move v0, v2

    .line 423
    :goto_1
    if-ge v0, v5, :cond_1

    .line 424
    if-lez v0, :cond_4

    .line 425
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 427
    :cond_4
    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/netflix/android/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 430
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/android/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 435
    :cond_6
    instance-of v0, v1, Lcom/netflix/android/org/json/JSONArray;

    if-eqz v0, :cond_8

    .line 436
    check-cast v1, Lcom/netflix/android/org/json/JSONArray;

    .line 437
    invoke-virtual {v1}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v6

    move v0, v2

    .line 438
    :goto_2
    if-ge v0, v6, :cond_1

    .line 439
    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 440
    instance-of v8, v7, Lcom/netflix/android/org/json/JSONArray;

    if-eqz v8, :cond_7

    .line 441
    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 442
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 444
    invoke-static {v7}, Lcom/netflix/android/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    const-string/jumbo v7, "</"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 438
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 449
    :cond_7
    invoke-static {v7, v5}, Lcom/netflix/android/org/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 452
    :cond_8
    const-string/jumbo v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 453
    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 454
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 455
    const-string/jumbo v0, "/>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 460
    :cond_9
    invoke-static {v1, v5}, Lcom/netflix/android/org/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 463
    :cond_a
    if-eqz p1, :cond_b

    .line 467
    const-string/jumbo v0, "</"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 471
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    :goto_4
    return-object v0

    .line 477
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 478
    new-instance v0, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v0, p0}, Lcom/netflix/android/org/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 480
    :goto_5
    instance-of v1, v0, Lcom/netflix/android/org/json/JSONArray;

    if-eqz v1, :cond_f

    .line 481
    check-cast v0, Lcom/netflix/android/org/json/JSONArray;

    .line 482
    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v4

    .line 483
    :goto_6
    if-ge v2, v4, :cond_e

    .line 484
    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    if-nez p1, :cond_d

    const-string/jumbo v1, "array"

    :goto_7
    invoke-static {v5, v1}, Lcom/netflix/android/org/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 483
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6

    :cond_d
    move-object v1, p1

    .line 484
    goto :goto_7

    .line 486
    :cond_e
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 488
    :cond_f
    if-nez v0, :cond_10

    const-string/jumbo v0, "null"

    .line 489
    :goto_8
    if-nez p1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 488
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/android/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 490
    :cond_11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_13
    move-object v0, p0

    goto/16 :goto_5
.end method
