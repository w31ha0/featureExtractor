.class public final Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;
.super Ljava/lang/Object;
.source "ActivationTokens.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_reg"


# instance fields
.field public autoLoginSource:Z

.field private json:Lorg/json/JSONObject;

.field public netflixId:Ljava/lang/String;

.field public secureNetflixId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->parseTokens(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->createJson()V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->parseTokens(Lorg/json/JSONObject;)V

    .line 49
    return-void
.end method

.method private createJson()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->json:Lorg/json/JSONObject;

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->json:Lorg/json/JSONObject;

    const-string/jumbo v1, "NetflixId"

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->json:Lorg/json/JSONObject;

    const-string/jumbo v1, "SecureNetflixId"

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    return-void

    .line 168
    :cond_0
    new-instance v0, Lorg/json/JSONException;

    const-string/jumbo v1, "Tokens cannot be null"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseTokens(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    const-string/jumbo v0, "nf_reg"

    const-string/jumbo v1, "Tokens are null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string/jumbo v0, "undefined"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    const-string/jumbo v0, "nf_reg"

    const-string/jumbo v1, "Tokens undefined"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->json:Lorg/json/JSONObject;

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->json:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->parseTokens(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private parseTokens(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->json:Lorg/json/JSONObject;

    .line 132
    if-nez p1, :cond_1

    .line 133
    const-string/jumbo v0, "nf_reg"

    const-string/jumbo v1, "Tokens are null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    return-void

    .line 137
    :cond_1
    const-string/jumbo v0, "NetflixId"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    .line 138
    const-string/jumbo v0, "SecureNetflixId"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 145
    :cond_2
    new-instance v0, Lorg/json/JSONException;

    const-string/jumbo v1, "Tokens cannot be null"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    if-ne p0, p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 92
    goto :goto_0

    .line 94
    :cond_2
    instance-of v2, p1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    if-nez v2, :cond_3

    move v0, v1

    .line 95
    goto :goto_0

    .line 97
    :cond_3
    check-cast p1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    .line 98
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 99
    iget-object v2, p1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 100
    goto :goto_0

    .line 102
    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 103
    goto :goto_0

    .line 105
    :cond_5
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 106
    iget-object v2, p1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 107
    goto :goto_0

    .line 109
    :cond_6
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 110
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 75
    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    .line 78
    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 80
    :goto_1
    add-int/2addr v0, v1

    .line 81
    return v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->netflixId:Ljava/lang/String;

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->secureNetflixId:Ljava/lang/String;

    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->json:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->json:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
