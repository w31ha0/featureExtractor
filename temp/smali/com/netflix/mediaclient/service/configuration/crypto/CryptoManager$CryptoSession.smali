.class public Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;
.super Ljava/lang/Object;
.source "CryptoManager.java"


# instance fields
.field public keyRequestData:[B

.field public keySetId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

.field public sessionId:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method


# virtual methods
.method public getKeyRequestData()[B
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->keyRequestData:[B

    return-object v0
.end method

.method public getKeyRequestDataAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->keyRequestData:[B

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->keyRequestData:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isKeyRequestDataNullOrEmpty()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->keyRequestData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->keyRequestData:[B

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPending()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->keySetId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->keyRequestData:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CryptoSession{keySetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->keySetId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->sessionId:[B

    .line 165
    invoke-static {v1}, Lcom/netflix/mediaclient/util/CryptoUtils;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", keyRequestData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->getKeyRequestDataAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    return-object v0
.end method
