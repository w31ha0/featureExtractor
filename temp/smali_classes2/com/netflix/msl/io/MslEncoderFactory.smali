.class public abstract Lcom/netflix/msl/io/MslEncoderFactory;
.super Ljava/lang/Object;
.source "MslEncoderFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x22

    const/4 v1, 0x0

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 52
    :cond_0
    const-string/jumbo v0, "\"\""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 57
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 59
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    move v2, v1

    .line 60
    :goto_1
    if-ge v0, v5, :cond_6

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 63
    sparse-switch v3, :sswitch_data_0

    .line 91
    const/16 v2, 0x20

    if-lt v3, v2, :cond_3

    const/16 v2, 0x80

    if-lt v3, v2, :cond_2

    const/16 v2, 0xa0

    if-lt v3, v2, :cond_3

    :cond_2
    const/16 v2, 0x2000

    if-lt v3, v2, :cond_5

    const/16 v2, 0x2100

    if-ge v3, v2, :cond_5

    .line 94
    :cond_3
    const-string/jumbo v2, "\\u"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    const-string/jumbo v6, "0000"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    rsub-int/lit8 v7, v7, 0x4

    invoke-virtual {v4, v6, v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    .line 66
    :sswitch_0
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 70
    :sswitch_1
    const/16 v6, 0x3c

    if-ne v2, v6, :cond_4

    .line 71
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 76
    :sswitch_2
    const-string/jumbo v2, "\\b"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 79
    :sswitch_3
    const-string/jumbo v2, "\\t"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 82
    :sswitch_4
    const-string/jumbo v2, "\\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 85
    :sswitch_5
    const-string/jumbo v2, "\\f"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 88
    :sswitch_6
    const-string/jumbo v2, "\\r"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 99
    :cond_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 103
    :cond_6
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 63
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xc -> :sswitch_5
        0xd -> :sswitch_6
        0x22 -> :sswitch_0
        0x2f -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method static stringify(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    const-string/jumbo v0, "null"

    .line 132
    :goto_0
    return-object v0

    .line 119
    :cond_1
    instance-of v0, p0, Lcom/netflix/msl/io/MslObject;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/netflix/msl/io/MslArray;

    if-eqz v0, :cond_3

    .line 120
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_3
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 122
    new-instance v0, Lcom/netflix/msl/io/MslObject;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Lcom/netflix/msl/io/MslObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/netflix/msl/io/MslObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_4
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_5

    .line 124
    new-instance v0, Lcom/netflix/msl/io/MslArray;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Lcom/netflix/msl/io/MslArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lcom/netflix/msl/io/MslArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_5
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 126
    new-instance v0, Lcom/netflix/msl/io/MslArray;

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-direct {v0, p0}, Lcom/netflix/msl/io/MslArray;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/netflix/msl/io/MslArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_6
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 128
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_8
    instance-of v0, p0, [B

    if-eqz v0, :cond_9

    .line 130
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/io/MslEncoderFactory;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public createArray()Lcom/netflix/msl/io/MslArray;
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/msl/io/MslEncoderFactory;->createArray(Ljava/util/Collection;)Lcom/netflix/msl/io/MslArray;

    move-result-object v0

    return-object v0
.end method

.method public createArray(Ljava/util/Collection;)Lcom/netflix/msl/io/MslArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcom/netflix/msl/io/MslArray;"
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lcom/netflix/msl/io/MslArray;

    invoke-direct {v0, p1}, Lcom/netflix/msl/io/MslArray;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public createObject()Lcom/netflix/msl/io/MslObject;
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject(Ljava/util/Map;)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    return-object v0
.end method

.method public createObject(Ljava/util/Map;)Lcom/netflix/msl/io/MslObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/netflix/msl/io/MslObject;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Lcom/netflix/msl/io/MslObject;

    invoke-direct {v0, p1}, Lcom/netflix/msl/io/MslObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public createTokenizer(Ljava/io/InputStream;)Lcom/netflix/msl/io/MslTokenizer;
    .locals 3

    .prologue
    .line 158
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    :goto_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 164
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    .line 165
    invoke-static {v0}, Lcom/netflix/msl/io/MslEncoderFormat;->getFormat(B)Lcom/netflix/msl/io/MslEncoderFormat;

    move-result-object v0

    .line 166
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    invoke-virtual {p0, p1, v0}, Lcom/netflix/msl/io/MslEncoderFactory;->generateTokenizer(Ljava/io/InputStream;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslTokenizer;

    move-result-object v0

    return-object v0

    .line 158
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Failure reading the byte stream identifier."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B
.end method

.method protected abstract generateTokenizer(Ljava/io/InputStream;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslTokenizer;
.end method

.method public abstract getPreferredFormat(Ljava/util/Set;)Lcom/netflix/msl/io/MslEncoderFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/io/MslEncoderFormat;",
            ">;)",
            "Lcom/netflix/msl/io/MslEncoderFormat;"
        }
    .end annotation
.end method

.method public parseFormat([B)Lcom/netflix/msl/io/MslEncoderFormat;
    .locals 4

    .prologue
    .line 217
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 218
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v1, "No encoding identifier found."

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    .line 222
    invoke-static {v0}, Lcom/netflix/msl/io/MslEncoderFormat;->getFormat(B)Lcom/netflix/msl/io/MslEncoderFormat;

    move-result-object v1

    .line 223
    if-nez v1, :cond_1

    .line 224
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unidentified encoder format ID: (byte)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_1
    return-object v1
.end method

.method public abstract parseObject([B)Lcom/netflix/msl/io/MslObject;
.end method
