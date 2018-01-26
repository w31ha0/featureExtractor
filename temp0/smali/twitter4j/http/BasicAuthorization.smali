.class public final Ltwitter4j/http/BasicAuthorization;
.super Ljava/lang/Object;
.source "BasicAuthorization.java"

# interfaces
.implements Ltwitter4j/http/Authorization;
.implements Ljava/io/Serializable;


# static fields
.field static class$twitter4j$http$BasicAuthorization:Ljava/lang/Class; = null

.field private static final logger:Ltwitter4j/internal/logging/Logger;

.field private static final serialVersionUID:J = -0x5156d367cd47ef54L


# instance fields
.field private basic:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Ltwitter4j/http/BasicAuthorization;->class$twitter4j$http$BasicAuthorization:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "twitter4j.http.BasicAuthorization"

    invoke-static {v0}, Ltwitter4j/http/BasicAuthorization;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/http/BasicAuthorization;->class$twitter4j$http$BasicAuthorization:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/http/BasicAuthorization;->logger:Ltwitter4j/internal/logging/Logger;

    return-void

    :cond_0
    sget-object v0, Ltwitter4j/http/BasicAuthorization;->class$twitter4j$http$BasicAuthorization:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Ltwitter4j/http/BasicAuthorization;->userId:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Ltwitter4j/http/BasicAuthorization;->password:Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Ltwitter4j/http/BasicAuthorization;->encodeBasicAuthenticationString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/BasicAuthorization;->basic:Ljava/lang/String;

    .line 55
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 43
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private encodeBasicAuthenticationString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Ltwitter4j/http/BasicAuthorization;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/http/BasicAuthorization;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/http/BasicAuthorization;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/http/BasicAuthorization;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ltwitter4j/internal/http/BASE64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 82
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 87
    :goto_0
    return v1

    .line 83
    :cond_0
    instance-of v1, p1, Ltwitter4j/http/BasicAuthorization;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 85
    check-cast v0, Ltwitter4j/http/BasicAuthorization;

    .line 87
    .local v0, "that":Ltwitter4j/http/BasicAuthorization;
    iget-object v1, p0, Ltwitter4j/http/BasicAuthorization;->basic:Ljava/lang/String;

    iget-object v2, v0, Ltwitter4j/http/BasicAuthorization;->basic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAuthorizationHeader(Ltwitter4j/internal/http/HttpRequest;)Ljava/lang/String;
    .locals 1
    .param p1, "req"    # Ltwitter4j/internal/http/HttpRequest;

    .prologue
    .line 73
    iget-object v0, p0, Ltwitter4j/http/BasicAuthorization;->basic:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Ltwitter4j/http/BasicAuthorization;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Ltwitter4j/http/BasicAuthorization;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ltwitter4j/http/BasicAuthorization;->basic:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "BasicAuthorization{userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/http/BasicAuthorization;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", password=\'**********\'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
