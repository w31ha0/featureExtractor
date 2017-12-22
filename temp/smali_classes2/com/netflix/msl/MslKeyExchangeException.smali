.class public Lcom/netflix/msl/MslKeyExchangeException;
.super Lcom/netflix/msl/MslException;
.source "MslKeyExchangeException.java"


# static fields
.field private static final serialVersionUID:J = -0x11a9d733d1aeaa85L


# direct methods
.method public constructor <init>(Lcom/netflix/msl/MslError;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method


# virtual methods
.method public bridge synthetic setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslException;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/netflix/msl/MslKeyExchangeException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    return-object v0
.end method

.method public setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;
    .locals 0

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/netflix/msl/MslException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslException;

    .line 90
    return-object p0
.end method

.method public bridge synthetic setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/netflix/msl/MslKeyExchangeException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    return-object v0
.end method

.method public setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslKeyExchangeException;
    .locals 0

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    .line 81
    return-object p0
.end method

.method public bridge synthetic setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/netflix/msl/MslKeyExchangeException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    return-object v0
.end method

.method public setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslKeyExchangeException;
    .locals 0

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/netflix/msl/MslException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    .line 108
    return-object p0
.end method

.method public bridge synthetic setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/netflix/msl/MslKeyExchangeException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslKeyExchangeException;

    move-result-object v0

    return-object v0
.end method

.method public setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslKeyExchangeException;
    .locals 0

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    .line 99
    return-object p0
.end method
