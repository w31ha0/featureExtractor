.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;
.super Ljava/lang/Object;
.source "AccountData.java"


# instance fields
.field private transient authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

.field private user:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

.field private userProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->userProfiles:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public getAuthorizationCredentials()Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    return-object v0
.end method

.method public getPrimaryProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->userProfiles:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->userProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 50
    :goto_0
    return-object v0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->userProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 45
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isPrimaryProfile()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 50
    goto :goto_0
.end method

.method public getUser()Lcom/netflix/mediaclient/service/webclient/model/leafs/User;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->user:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    return-object v0
.end method

.method public getUserProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->userProfiles:Ljava/util/List;

    return-object v0
.end method

.method public setAuthorizationCredentials(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    .line 59
    return-void
.end method

.method public setUser(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->user:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    .line 29
    return-void
.end method

.method public setUserProfiles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->userProfiles:Ljava/util/List;

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    const-string/jumbo v0, "AccountData{ user= "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->user:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ". userProfiles= ["

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->userProfiles:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->userProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 72
    if-eqz v1, :cond_1

    .line 73
    if-nez v1, :cond_0

    move v1, v2

    .line 77
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 73
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 75
    :cond_1
    const-string/jumbo v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 81
    :cond_2
    const-string/jumbo v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    if-eqz v0, :cond_3

    .line 83
    const-string/jumbo v0, ". "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    :cond_3
    const-string/jumbo v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
