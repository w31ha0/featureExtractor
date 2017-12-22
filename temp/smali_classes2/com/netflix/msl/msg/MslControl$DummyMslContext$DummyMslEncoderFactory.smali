.class Lcom/netflix/msl/msg/MslControl$DummyMslContext$DummyMslEncoderFactory;
.super Lcom/netflix/msl/io/MslEncoderFactory;
.source "MslControl.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/netflix/msl/io/MslEncoderFactory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/msl/msg/MslControl$1;)V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/netflix/msl/msg/MslControl$DummyMslContext$DummyMslEncoderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 2

    .prologue
    .line 349
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "DummyMslEncoderFactory.encodeObject() not supported."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateTokenizer(Ljava/io/InputStream;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslTokenizer;
    .locals 2

    .prologue
    .line 339
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "DummyMslEncoderFactory.generateTokenizer() not supported."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

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
    .line 334
    sget-object v0, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    return-object v0
.end method

.method public parseObject([B)Lcom/netflix/msl/io/MslObject;
    .locals 2

    .prologue
    .line 344
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "DummyMslEncoderFactory.parseObject() not supported."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
