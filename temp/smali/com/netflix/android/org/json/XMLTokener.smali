.class public Lcom/netflix/android/org/json/XMLTokener;
.super Lcom/netflix/android/org/json/JSONTokener;
.source "XMLTokener.java"


# static fields
.field public static final entity:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/netflix/android/org/json/XMLTokener;->entity:Ljava/util/HashMap;

    .line 43
    sget-object v0, Lcom/netflix/android/org/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string/jumbo v1, "amp"

    sget-object v2, Lcom/netflix/android/org/json/XML;->AMP:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/netflix/android/org/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string/jumbo v1, "apos"

    sget-object v2, Lcom/netflix/android/org/json/XML;->APOS:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/netflix/android/org/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string/jumbo v1, "gt"

    sget-object v2, Lcom/netflix/android/org/json/XML;->GT:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/netflix/android/org/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string/jumbo v1, "lt"

    sget-object v2, Lcom/netflix/android/org/json/XML;->LT:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/netflix/android/org/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string/jumbo v1, "quot"

    sget-object v2, Lcom/netflix/android/org/json/XML;->QUOT:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/netflix/android/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public nextCDATA()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x5d

    .line 66
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->next()C

    move-result v1

    .line 69
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->end()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    const-string/jumbo v0, "Unclosed CDATA"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    .line 72
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    .line 74
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_0

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextContent()Ljava/lang/Object;
    .locals 4

    .prologue
    const/16 v3, 0x3c

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->next()C

    move-result v0

    .line 97
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    if-nez v0, :cond_1

    .line 99
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    .line 101
    :cond_1
    if-ne v0, v3, :cond_2

    .line 102
    sget-object v0, Lcom/netflix/android/org/json/XML;->LT:Ljava/lang/Character;

    goto :goto_0

    .line 104
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    :goto_1
    if-eq v0, v3, :cond_3

    if-nez v0, :cond_4

    .line 107
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->back()V

    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_4
    const/16 v2, 0x26

    if-ne v0, v2, :cond_5

    .line 111
    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->nextEntity(C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 115
    :goto_2
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->next()C

    move-result v0

    goto :goto_1

    .line 113
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public nextEntity(C)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->next()C

    move-result v1

    .line 131
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1

    .line 132
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 133
    :cond_1
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_2

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    sget-object v0, Lcom/netflix/android/org/json/XMLTokener;->entity:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_3

    :goto_1
    return-object v0

    .line 136
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Missing \';\' in XML entity: &"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    .line 141
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public nextMeta()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->next()C

    move-result v0

    .line 159
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    sparse-switch v0, :sswitch_data_0

    .line 189
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->next()C

    move-result v0

    .line 190
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 191
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 204
    :goto_1
    return-object v0

    .line 162
    :sswitch_0
    const-string/jumbo v0, "Misshaped meta tag"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    .line 164
    :sswitch_1
    sget-object v0, Lcom/netflix/android/org/json/XML;->LT:Ljava/lang/Character;

    goto :goto_1

    .line 166
    :sswitch_2
    sget-object v0, Lcom/netflix/android/org/json/XML;->GT:Ljava/lang/Character;

    goto :goto_1

    .line 168
    :sswitch_3
    sget-object v0, Lcom/netflix/android/org/json/XML;->SLASH:Ljava/lang/Character;

    goto :goto_1

    .line 170
    :sswitch_4
    sget-object v0, Lcom/netflix/android/org/json/XML;->EQ:Ljava/lang/Character;

    goto :goto_1

    .line 172
    :sswitch_5
    sget-object v0, Lcom/netflix/android/org/json/XML;->BANG:Ljava/lang/Character;

    goto :goto_1

    .line 174
    :sswitch_6
    sget-object v0, Lcom/netflix/android/org/json/XML;->QUEST:Ljava/lang/Character;

    goto :goto_1

    .line 179
    :cond_1
    :sswitch_7
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->next()C

    move-result v1

    .line 180
    if-nez v1, :cond_2

    .line 181
    const-string/jumbo v0, "Unterminated string"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    .line 183
    :cond_2
    if-ne v1, v0, :cond_1

    .line 184
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 193
    :cond_3
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 203
    :sswitch_8
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->back()V

    .line 204
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 160
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_5
        0x22 -> :sswitch_7
        0x27 -> :sswitch_7
        0x2f -> :sswitch_3
        0x3c -> :sswitch_1
        0x3d -> :sswitch_4
        0x3e -> :sswitch_2
        0x3f -> :sswitch_6
    .end sparse-switch

    .line 193
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_8
        0x21 -> :sswitch_8
        0x22 -> :sswitch_8
        0x27 -> :sswitch_8
        0x2f -> :sswitch_8
        0x3c -> :sswitch_8
        0x3d -> :sswitch_8
        0x3e -> :sswitch_8
        0x3f -> :sswitch_8
    .end sparse-switch
.end method

.method public nextToken()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->next()C

    move-result v0

    .line 225
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    sparse-switch v0, :sswitch_data_0

    .line 266
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 268
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 269
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->next()C

    move-result v0

    .line 270
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 271
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    :goto_1
    return-object v0

    .line 228
    :sswitch_0
    const-string/jumbo v0, "Misshaped element"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    .line 230
    :sswitch_1
    const-string/jumbo v0, "Misplaced \'<\'"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    .line 232
    :sswitch_2
    sget-object v0, Lcom/netflix/android/org/json/XML;->GT:Ljava/lang/Character;

    goto :goto_1

    .line 234
    :sswitch_3
    sget-object v0, Lcom/netflix/android/org/json/XML;->SLASH:Ljava/lang/Character;

    goto :goto_1

    .line 236
    :sswitch_4
    sget-object v0, Lcom/netflix/android/org/json/XML;->EQ:Ljava/lang/Character;

    goto :goto_1

    .line 238
    :sswitch_5
    sget-object v0, Lcom/netflix/android/org/json/XML;->BANG:Ljava/lang/Character;

    goto :goto_1

    .line 240
    :sswitch_6
    sget-object v0, Lcom/netflix/android/org/json/XML;->QUEST:Ljava/lang/Character;

    goto :goto_1

    .line 247
    :sswitch_7
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 249
    :goto_2
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->next()C

    move-result v2

    .line 250
    if-nez v2, :cond_1

    .line 251
    const-string/jumbo v0, "Unterminated string"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    .line 253
    :cond_1
    if-ne v2, v0, :cond_2

    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 256
    :cond_2
    const/16 v3, 0x26

    if-ne v2, v3, :cond_3

    .line 257
    invoke-virtual {p0, v2}, Lcom/netflix/android/org/json/XMLTokener;->nextEntity(C)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 259
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 273
    :cond_4
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 275
    :sswitch_8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 283
    :sswitch_9
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->back()V

    .line 284
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 288
    :sswitch_a
    const-string/jumbo v0, "Bad character in a name"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    .line 226
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_5
        0x22 -> :sswitch_7
        0x27 -> :sswitch_7
        0x2f -> :sswitch_3
        0x3c -> :sswitch_1
        0x3d -> :sswitch_4
        0x3e -> :sswitch_2
        0x3f -> :sswitch_6
    .end sparse-switch

    .line 273
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_8
        0x21 -> :sswitch_9
        0x22 -> :sswitch_a
        0x27 -> :sswitch_a
        0x2f -> :sswitch_9
        0x3c -> :sswitch_a
        0x3d -> :sswitch_9
        0x3e -> :sswitch_9
        0x3f -> :sswitch_9
        0x5b -> :sswitch_9
        0x5d -> :sswitch_9
    .end sparse-switch
.end method

.method public skipPast(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 306
    .line 307
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 308
    new-array v6, v5, [C

    move v0, v1

    .line 315
    :goto_0
    if-ge v0, v5, :cond_7

    .line 316
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->next()C

    move-result v2

    .line 317
    if-nez v2, :cond_0

    .line 352
    :goto_1
    return v1

    .line 320
    :cond_0
    aput-char v2, v6, v0

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_1
    aput-char v2, v6, v0

    .line 359
    add-int/lit8 v0, v0, 0x1

    .line 360
    if-lt v0, v5, :cond_2

    .line 361
    sub-int/2addr v0, v5

    :cond_2
    :goto_2
    move v2, v0

    move v4, v1

    .line 331
    :goto_3
    if-ge v4, v5, :cond_6

    .line 332
    aget-char v7, v6, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_3

    move v2, v1

    .line 344
    :goto_4
    if-eqz v2, :cond_5

    move v1, v3

    .line 345
    goto :goto_1

    .line 336
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 337
    if-lt v2, v5, :cond_4

    .line 338
    sub-int/2addr v2, v5

    .line 331
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 350
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->next()C

    move-result v2

    .line 351
    if-nez v2, :cond_1

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_2
.end method
