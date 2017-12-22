.class public Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistryWrapper;
.super Ljava/lang/Object;
.source "UserCredentialRegistryWrapper.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;


# instance fields
.field private mNetflixId:Ljava/lang/String;

.field private mSecureNetflixId:Ljava/lang/String;

.field private mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistryWrapper;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    .line 47
    if-eqz p1, :cond_0

    .line 48
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getNetflixID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistryWrapper;->mNetflixId:Ljava/lang/String;

    .line 49
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getSecureNetflixID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistryWrapper;->mSecureNetflixId:Ljava/lang/String;

    .line 50
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistryWrapper;->mUserId:Ljava/lang/String;

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public getNetflixID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistryWrapper;->mNetflixId:Ljava/lang/String;

    return-object v0
.end method

.method public getNetflixIdName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistryWrapper;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getNetflixIdName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecureNetflixID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistryWrapper;->mSecureNetflixId:Ljava/lang/String;

    return-object v0
.end method

.method public getSecureNetflixIdName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistryWrapper;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->getSecureNetflixIdName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistryWrapper;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public updateUserCredentials(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistryWrapper;->mUserCredentialRegistry:Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/webclient/UserCredentialRegistry;->updateUserCredentials(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)Z

    move-result v0

    return v0
.end method
