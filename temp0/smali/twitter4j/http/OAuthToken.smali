.class abstract Ltwitter4j/http/OAuthToken;
.super Ljava/lang/Object;
.source "OAuthToken.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field responseStr:[Ljava/lang/String;

.field private transient secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

.field private token:Ljava/lang/String;

.field private tokenSecret:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/http/OAuthToken;->responseStr:[Ljava/lang/String;

    .line 51
    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/OAuthToken;->responseStr:[Ljava/lang/String;

    .line 52
    const-string v0, "oauth_token_secret"

    invoke-virtual {p0, v0}, Ltwitter4j/http/OAuthToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/OAuthToken;->tokenSecret:Ljava/lang/String;

    .line 53
    const-string v0, "oauth_token"

    invoke-virtual {p0, v0}, Ltwitter4j/http/OAuthToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/http/OAuthToken;->token:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "tokenSecret"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/http/OAuthToken;->responseStr:[Ljava/lang/String;

    .line 43
    iput-object p1, p0, Ltwitter4j/http/OAuthToken;->token:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Ltwitter4j/http/OAuthToken;->tokenSecret:Ljava/lang/String;

    .line 45
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;)V
    .locals 1
    .param p1, "response"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/http/OAuthToken;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    if-ne p0, p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v1

    .line 86
    :cond_1
    instance-of v3, p1, Ltwitter4j/http/OAuthToken;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 88
    check-cast v0, Ltwitter4j/http/OAuthToken;

    .line 90
    .local v0, "that":Ltwitter4j/http/OAuthToken;
    iget-object v3, p0, Ltwitter4j/http/OAuthToken;->token:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/http/OAuthToken;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 91
    :cond_3
    iget-object v3, p0, Ltwitter4j/http/OAuthToken;->tokenSecret:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/http/OAuthToken;->tokenSecret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v4, 0x0

    .line 74
    .local v4, "value":Ljava/lang/String;
    iget-object v0, p0, Ltwitter4j/http/OAuthToken;->responseStr:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 75
    .local v3, "str":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 76
    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 80
    .end local v3    # "str":Ljava/lang/String;
    :cond_0
    return-object v4

    .line 74
    .restart local v3    # "str":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getSecretKeySpec()Ljavax/crypto/spec/SecretKeySpec;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Ltwitter4j/http/OAuthToken;->secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ltwitter4j/http/OAuthToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Ltwitter4j/http/OAuthToken;->tokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 98
    iget-object v1, p0, Ltwitter4j/http/OAuthToken;->token:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 99
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/http/OAuthToken;->tokenSecret:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 100
    return v0
.end method

.method setSecretKeySpec(Ljavax/crypto/spec/SecretKeySpec;)V
    .locals 0
    .param p1, "secretKeySpec"    # Ljavax/crypto/spec/SecretKeySpec;

    .prologue
    .line 65
    iput-object p1, p0, Ltwitter4j/http/OAuthToken;->secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "OAuthToken{token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/http/OAuthToken;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", tokenSecret=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/http/OAuthToken;->tokenSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", secretKeySpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/http/OAuthToken;->secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
