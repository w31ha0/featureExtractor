.class public Ltwitter4j/http/AccessToken;
.super Ltwitter4j/http/OAuthToken;
.source "AccessToken.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x73cdb85869c93e33L


# instance fields
.field private screenName:Ljava/lang/String;

.field private userId:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ltwitter4j/http/OAuthToken;-><init>(Ljava/lang/String;)V

    .line 47
    const-string v1, "screen_name"

    invoke-virtual {p0, v1}, Ltwitter4j/http/AccessToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/http/AccessToken;->screenName:Ljava/lang/String;

    .line 48
    const-string v1, "user_id"

    invoke-virtual {p0, v1}, Ltwitter4j/http/AccessToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "sUserId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ltwitter4j/http/AccessToken;->userId:I

    .line 50
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "tokenSecret"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ltwitter4j/http/OAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;)V
    .locals 1
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/http/AccessToken;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    if-ne p0, p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 79
    :cond_1
    instance-of v3, p1, Ltwitter4j/http/AccessToken;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 80
    :cond_2
    invoke-super {p0, p1}, Ltwitter4j/http/OAuthToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 82
    check-cast v0, Ltwitter4j/http/AccessToken;

    .line 84
    .local v0, "that":Ltwitter4j/http/AccessToken;
    iget v3, p0, Ltwitter4j/http/AccessToken;->userId:I

    iget v4, v0, Ltwitter4j/http/AccessToken;->userId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 85
    :cond_4
    iget-object v3, p0, Ltwitter4j/http/AccessToken;->screenName:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Ltwitter4j/http/AccessToken;->screenName:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/http/AccessToken;->screenName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 86
    goto :goto_0

    .line 85
    :cond_5
    iget-object v3, v0, Ltwitter4j/http/AccessToken;->screenName:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-super {p0, p1}, Ltwitter4j/http/OAuthToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ltwitter4j/http/AccessToken;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Ltwitter4j/http/OAuthToken;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Ltwitter4j/http/OAuthToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Ltwitter4j/http/AccessToken;->userId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 93
    invoke-super {p0}, Ltwitter4j/http/OAuthToken;->hashCode()I

    move-result v0

    .line 94
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/http/AccessToken;->screenName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltwitter4j/http/AccessToken;->screenName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 95
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/http/AccessToken;->userId:I

    add-int v0, v1, v2

    .line 96
    return v0

    .line 94
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "AccessToken{screenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/http/AccessToken;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/http/AccessToken;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
