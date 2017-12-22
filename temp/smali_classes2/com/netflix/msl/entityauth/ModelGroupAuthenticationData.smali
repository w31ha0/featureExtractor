.class public Lcom/netflix/msl/entityauth/ModelGroupAuthenticationData;
.super Lcom/netflix/msl/entityauth/EntityAuthenticationData;
.source "ModelGroupAuthenticationData.java"


# static fields
.field private static final KEY_IDENTITY:Ljava/lang/String; = "identity"


# instance fields
.field private final identity:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/io/MslObject;)V
    .locals 5

    .prologue
    .line 51
    sget-object v0, Lcom/netflix/msl/entityauth/NetflixEntityAuthenticationScheme;->MGK:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;-><init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V

    .line 53
    :try_start_0
    const-string/jumbo v0, "identity"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/entityauth/ModelGroupAuthenticationData;->identity:Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mgk authdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/netflix/msl/entityauth/NetflixEntityAuthenticationScheme;->MGK:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;-><init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V

    .line 39
    iput-object p1, p0, Lcom/netflix/msl/entityauth/ModelGroupAuthenticationData;->identity:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    if-ne p1, p0, :cond_0

    .line 86
    :goto_0
    return v1

    .line 83
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/entityauth/ModelGroupAuthenticationData;

    if-nez v0, :cond_1

    move v1, v2

    .line 84
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 85
    check-cast v0, Lcom/netflix/msl/entityauth/ModelGroupAuthenticationData;

    .line 86
    invoke-super {p0, p1}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/entityauth/ModelGroupAuthenticationData;->identity:Ljava/lang/String;

    iget-object v0, v0, Lcom/netflix/msl/entityauth/ModelGroupAuthenticationData;->identity:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public getAuthData(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslObject;
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 73
    const-string/jumbo v1, "identity"

    iget-object v2, p0, Lcom/netflix/msl/entityauth/ModelGroupAuthenticationData;->identity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 74
    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/netflix/msl/entityauth/ModelGroupAuthenticationData;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/entityauth/ModelGroupAuthenticationData;->identity:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
