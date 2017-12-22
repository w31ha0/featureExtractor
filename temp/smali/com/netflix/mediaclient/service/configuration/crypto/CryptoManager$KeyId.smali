.class public Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;
.super Ljava/lang/Object;
.source "CryptoManager.java"


# instance fields
.field private keyId:[B

.field private keyIdAsString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Key Set ID can not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;->keyIdAsString:Ljava/lang/String;

    .line 197
    invoke-static {p1}, Lcom/netflix/mediaclient/util/CryptoUtils;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;->keyId:[B

    .line 198
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gez v0, :cond_1

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Key Set ID can not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;->keyId:[B

    .line 207
    invoke-static {p1}, Lcom/netflix/mediaclient/util/CryptoUtils;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;->keyIdAsString:Ljava/lang/String;

    .line 208
    return-void
.end method


# virtual methods
.method public get()[B
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;->keyId:[B

    return-object v0
.end method

.method public getAsBase64EncodedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;->keyIdAsString:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KeyId{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;->keyIdAsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
