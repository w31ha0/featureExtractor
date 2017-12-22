.class Lcom/netflix/msl/msg/MslControl$FilterMessageContext;
.super Ljava/lang/Object;
.source "MslControl.java"

# interfaces
.implements Lcom/netflix/msl/msg/MessageContext;


# instance fields
.field protected final appCtx:Lcom/netflix/msl/msg/MessageContext;


# direct methods
.method protected constructor <init>(Lcom/netflix/msl/msg/MessageContext;)V
    .locals 0

    .prologue
    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$FilterMessageContext;->appCtx:Lcom/netflix/msl/msg/MessageContext;

    .line 517
    return-void
.end method


# virtual methods
.method public getCryptoContexts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$FilterMessageContext;->appCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->getCryptoContexts()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$FilterMessageContext;->appCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->getDebugContext()Lcom/netflix/msl/msg/MessageDebugContext;

    move-result-object v0

    return-object v0
.end method

.method public getKeyRequestData()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/keyx/KeyRequestData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 596
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$FilterMessageContext;->appCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->getKeyRequestData()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$FilterMessageContext;->appCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->getRecipient()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lcom/netflix/msl/tokens/MslUser;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$FilterMessageContext;->appCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->getUser()Lcom/netflix/msl/tokens/MslUser;

    move-result-object v0

    return-object v0
.end method

.method public getUserAuthData(Lcom/netflix/msl/msg/MessageContext$ReauthCode;ZZ)Lcom/netflix/msl/userauth/UserAuthenticationData;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$FilterMessageContext;->appCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/msl/msg/MessageContext;->getUserAuthData(Lcom/netflix/msl/msg/MessageContext$ReauthCode;ZZ)Lcom/netflix/msl/userauth/UserAuthenticationData;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$FilterMessageContext;->appCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$FilterMessageContext;->appCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->isEncrypted()Z

    move-result v0

    return v0
.end method

.method public isIntegrityProtected()Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$FilterMessageContext;->appCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->isIntegrityProtected()Z

    move-result v0

    return v0
.end method

.method public isNonReplayable()Z
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$FilterMessageContext;->appCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->isNonReplayable()Z

    move-result v0

    return v0
.end method

.method public isRequestingTokens()Z
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$FilterMessageContext;->appCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0}, Lcom/netflix/msl/msg/MessageContext;->isRequestingTokens()Z

    move-result v0

    return v0
.end method

.method public updateServiceTokens(Lcom/netflix/msl/msg/MessageServiceTokenBuilder;Z)V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$FilterMessageContext;->appCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0, p1, p2}, Lcom/netflix/msl/msg/MessageContext;->updateServiceTokens(Lcom/netflix/msl/msg/MessageServiceTokenBuilder;Z)V

    .line 605
    return-void
.end method

.method public write(Lcom/netflix/msl/msg/MessageOutputStream;)V
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$FilterMessageContext;->appCtx:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0, p1}, Lcom/netflix/msl/msg/MessageContext;->write(Lcom/netflix/msl/msg/MessageOutputStream;)V

    .line 613
    return-void
.end method
