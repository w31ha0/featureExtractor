.class public Lcom/netflix/msl/entityauth/ProvisionedAuthenticationData;
.super Lcom/netflix/msl/entityauth/EntityAuthenticationData;
.source "ProvisionedAuthenticationData.java"


# instance fields
.field private identity:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->PROVISIONED:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;-><init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V

    .line 102
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/msl/entityauth/ProvisionedAuthenticationData;->identity:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/io/MslObject;)V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->PROVISIONED:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;-><init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V

    .line 102
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/msl/entityauth/ProvisionedAuthenticationData;->identity:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 88
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    .line 89
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/entityauth/ProvisionedAuthenticationData;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_1
    invoke-super {p0, p1}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAuthData(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslObject;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/msl/entityauth/ProvisionedAuthenticationData;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/netflix/msl/entityauth/EntityAuthenticationData;->hashCode()I

    move-result v0

    return v0
.end method

.method setIdentity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/netflix/msl/entityauth/ProvisionedAuthenticationData;->identity:Ljava/lang/String;

    .line 64
    return-void
.end method
