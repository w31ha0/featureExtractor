.class public Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;
.super Ljava/lang/Object;
.source "EntityAuthenticationScheme.java"


# static fields
.field public static final ECC:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

.field public static final MT_PROTECTED:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

.field public static final NONE:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

.field public static final NONE_SUFFIXED:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

.field public static final PROVISIONED:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

.field public static final PSK:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

.field public static final PSK_PROFILE:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

.field public static final RSA:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

.field public static final X509:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

.field private static schemes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final encrypts:Z

.field private final name:Ljava/lang/String;

.field private final protects:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->schemes:Ljava/util/Map;

    .line 35
    new-instance v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    const-string/jumbo v1, "PSK"

    invoke-direct {v0, v1, v3, v3}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->PSK:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    .line 37
    new-instance v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    const-string/jumbo v1, "PSK_PROFILE"

    invoke-direct {v0, v1, v3, v3}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->PSK_PROFILE:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    .line 39
    new-instance v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    const-string/jumbo v1, "X509"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->X509:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    .line 41
    new-instance v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    const-string/jumbo v1, "RSA"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->RSA:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    .line 43
    new-instance v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    const-string/jumbo v1, "ECC"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->ECC:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    .line 45
    new-instance v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->NONE:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    .line 47
    new-instance v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    const-string/jumbo v1, "NONE_SUFFIXED"

    invoke-direct {v0, v1, v2, v2}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->NONE_SUFFIXED:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    .line 49
    new-instance v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    const-string/jumbo v1, "MT_PROTECTED"

    invoke-direct {v0, v1, v2, v2}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->MT_PROTECTED:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    .line 51
    new-instance v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    const-string/jumbo v1, "PROVISIONED"

    invoke-direct {v0, v1, v2, v2}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->PROVISIONED:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZZ)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->name:Ljava/lang/String;

    .line 63
    iput-boolean p2, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->encrypts:Z

    .line 64
    iput-boolean p3, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->protects:Z

    .line 67
    sget-object v1, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->schemes:Ljava/util/Map;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->schemes:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    monitor-exit v1

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getScheme(Ljava/lang/String;)Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->schemes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    return-object v0
.end method

.method public static values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    sget-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->schemes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public encrypts()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->encrypts:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 130
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    .line 131
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 132
    :cond_1
    check-cast p1, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    .line 133
    iget-object v0, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->name:Ljava/lang/String;

    return-object v0
.end method

.method public protectsIntegrity()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->protects:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
