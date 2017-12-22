.class public Lcom/netflix/mediaclient/service/msl/client/AndroidWidevineKeyRequestData;
.super Lcom/netflix/msl/keyx/WidevineKeyRequestData;
.source "AndroidWidevineKeyRequestData.java"


# instance fields
.field private final keyRequestDataCryptoSession:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;)V
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->getKeyRequestData()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/msl/keyx/WidevineKeyRequestData;-><init>([B)V

    .line 22
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidWidevineKeyRequestData;->keyRequestDataCryptoSession:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/io/MslObject;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/netflix/msl/keyx/WidevineKeyRequestData;-><init>(Lcom/netflix/msl/io/MslObject;)V

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MslObject constructor is not supported by client! This should never be called on client!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getKeyRequestDataCryptoSession()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/AndroidWidevineKeyRequestData;->keyRequestDataCryptoSession:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;

    return-object v0
.end method
