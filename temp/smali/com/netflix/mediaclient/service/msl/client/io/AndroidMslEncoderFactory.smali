.class public Lcom/netflix/mediaclient/service/msl/client/io/AndroidMslEncoderFactory;
.super Lcom/netflix/msl/io/MslEncoderFactory;
.source "AndroidMslEncoderFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/netflix/msl/io/MslEncoderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    invoke-virtual {v0, p2}, Lcom/netflix/msl/io/MslEncoderFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->getEncoded(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslObject;)[B

    move-result-object v0

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported encoder format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateTokenizer(Ljava/io/InputStream;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslTokenizer;
    .locals 3

    .prologue
    .line 31
    sget-object v0, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    invoke-virtual {v0, p2}, Lcom/netflix/msl/io/MslEncoderFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslTokenizer;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslTokenizer;-><init>(Lcom/netflix/msl/io/MslEncoderFactory;Ljava/io/InputStream;)V

    return-object v0

    .line 36
    :cond_0
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported encoder format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPreferredFormat(Ljava/util/Set;)Lcom/netflix/msl/io/MslEncoderFormat;
    .locals 1
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

    .prologue
    .line 25
    sget-object v0, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    return-object v0
.end method

.method public parseObject([B)Lcom/netflix/msl/io/MslObject;
    .locals 4

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/msl/client/io/AndroidMslEncoderFactory;->parseFormat([B)Lcom/netflix/msl/io/MslEncoderFormat;

    move-result-object v0

    .line 43
    sget-object v1, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    invoke-virtual {v1, v0}, Lcom/netflix/msl/io/MslEncoderFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;-><init>(Lcom/netflix/msl/io/MslEncoderFactory;[B)V

    return-object v0

    .line 46
    :cond_0
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported encoder format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
