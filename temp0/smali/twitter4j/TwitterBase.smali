.class abstract Ltwitter4j/TwitterBase;
.super Ljava/lang/Object;
.source "TwitterBase.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x34e79201c9363e6cL


# instance fields
.field protected auth:Ltwitter4j/http/Authorization;

.field protected final conf:Ltwitter4j/conf/Configuration;


# direct methods
.method constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 2
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Ltwitter4j/TwitterBase;->conf:Ltwitter4j/conf/Configuration;

    .line 46
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterBase;->initBasicAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method constructor <init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Ltwitter4j/TwitterBase;->conf:Ltwitter4j/conf/Configuration;

    .line 51
    invoke-direct {p0, p2, p3}, Ltwitter4j/TwitterBase;->initBasicAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)V
    .locals 0
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .param p2, "auth"    # Ltwitter4j/http/Authorization;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Ltwitter4j/TwitterBase;->conf:Ltwitter4j/conf/Configuration;

    .line 65
    iput-object p2, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    .line 66
    return-void
.end method

.method private initBasicAuthorization(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 55
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 56
    new-instance v0, Ltwitter4j/http/BasicAuthorization;

    invoke-direct {v0, p1, p2}, Ltwitter4j/http/BasicAuthorization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    .line 58
    :cond_0
    iget-object v0, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    if-nez v0, :cond_1

    .line 59
    invoke-static {}, Ltwitter4j/http/NullAuthorization;->getInstance()Ltwitter4j/http/NullAuthorization;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    .line 61
    :cond_1
    return-void
.end method


# virtual methods
.method protected final ensureAuthorizationEnabled()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    invoke-interface {v0}, Ltwitter4j/http/Authorization;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Neither user ID/password combination nor OAuth consumer key/secret combination supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    return-void
.end method

.method protected final ensureBasicEnabled()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    instance-of v0, v0, Ltwitter4j/http/BasicAuthorization;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "user ID/password combination not supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    if-ne p0, p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 102
    :cond_1
    instance-of v3, p1, Ltwitter4j/TwitterBase;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 104
    check-cast v0, Ltwitter4j/TwitterBase;

    .line 106
    .local v0, "that":Ltwitter4j/TwitterBase;
    iget-object v3, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    iget-object v4, v0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public final getAuthorization()Ltwitter4j/http/Authorization;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isBasicAuthEnabled()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    instance-of v0, v0, Ltwitter4j/http/BasicAuthorization;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    invoke-interface {v0}, Ltwitter4j/http/Authorization;->isEnabled()Z

    move-result v0

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
    .line 118
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TwitterBase{auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterBase;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
