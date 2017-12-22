.class public Lcom/netflix/msl/MslEncodingException;
.super Lcom/netflix/msl/MslException;
.source "MslEncodingException.java"


# static fields
.field private static final serialVersionUID:J = -0x1fdcf2c43900f800L


# direct methods
.method public constructor <init>(Lcom/netflix/msl/MslError;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/MslException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    .line 72
    return-void
.end method


# virtual methods
.method public setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEncodingException;
    .locals 0

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/netflix/msl/MslException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslException;

    .line 89
    return-object p0
.end method

.method public bridge synthetic setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslException;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/netflix/msl/MslEncodingException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    return-object v0
.end method

.method public setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;
    .locals 0

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/netflix/msl/MslException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;

    .line 80
    return-object p0
.end method

.method public bridge synthetic setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslException;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/netflix/msl/MslEncodingException;->setMasterToken(Lcom/netflix/msl/tokens/MasterToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    return-object v0
.end method

.method public setMessageId(J)Lcom/netflix/msl/MslEncodingException;
    .locals 1

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Lcom/netflix/msl/MslException;->setMessageId(J)Lcom/netflix/msl/MslException;

    .line 116
    return-object p0
.end method

.method public bridge synthetic setMessageId(J)Lcom/netflix/msl/MslException;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/netflix/msl/MslEncodingException;->setMessageId(J)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    return-object v0
.end method

.method public setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslEncodingException;
    .locals 0

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/netflix/msl/MslException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;

    .line 107
    return-object p0
.end method

.method public bridge synthetic setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslException;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/netflix/msl/MslEncodingException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    return-object v0
.end method

.method public setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslEncodingException;
    .locals 0

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/netflix/msl/MslException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;

    .line 98
    return-object p0
.end method

.method public bridge synthetic setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslException;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/netflix/msl/MslEncodingException;->setUserIdToken(Lcom/netflix/msl/tokens/UserIdToken;)Lcom/netflix/msl/MslEncodingException;

    move-result-object v0

    return-object v0
.end method
