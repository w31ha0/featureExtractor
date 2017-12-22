.class public Lcom/netflix/msl/keyx/WidevineKeyRequestData;
.super Lcom/netflix/msl/keyx/KeyRequestData;
.source "WidevineKeyRequestData.java"


# static fields
.field private static final KEY_REQUEST_DATA:Ljava/lang/String; = "keyrequest"


# instance fields
.field private final keyRequestData:[B


# direct methods
.method public constructor <init>(Lcom/netflix/msl/io/MslObject;)V
    .locals 5

    .prologue
    .line 49
    sget-object v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->WIDEVINE:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyRequestData;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 52
    :try_start_0
    const-string/jumbo v0, "keyrequest"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;->keyRequestData:[B
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keydata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/netflix/msl/keyx/NetflixKeyExchangeScheme;->WIDEVINE:Lcom/netflix/msl/keyx/KeyExchangeScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/KeyRequestData;-><init>(Lcom/netflix/msl/keyx/KeyExchangeScheme;)V

    .line 35
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Key request data must be defined and non-empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    iput-object p1, p0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;->keyRequestData:[B

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    if-ne p1, p0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v2

    .line 83
    :cond_1
    instance-of v0, p1, Lcom/netflix/msl/keyx/WidevineKeyRequestData;

    if-nez v0, :cond_2

    move v2, v1

    .line 84
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 87
    check-cast v0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;

    .line 88
    iget-object v3, p0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;->keyRequestData:[B

    iget-object v4, v0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;->keyRequestData:[B

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;->keyRequestData:[B

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;->keyRequestData:[B

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;->keyRequestData:[B

    iget-object v0, v0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;->keyRequestData:[B

    .line 89
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    move v0, v2

    .line 91
    :goto_1
    invoke-super {p0, p1}, Lcom/netflix/msl/keyx/KeyRequestData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_0

    :cond_4
    move v2, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 89
    goto :goto_1
.end method

.method public getKeyRequestData()[B
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;->keyRequestData:[B

    return-object v0
.end method

.method protected getKeydata(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslObject;
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 71
    const-string/jumbo v1, "keyrequest"

    iget-object v2, p0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;->keyRequestData:[B

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 72
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/netflix/msl/keyx/KeyRequestData;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/keyx/WidevineKeyRequestData;->keyRequestData:[B

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
