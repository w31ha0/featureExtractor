.class public Lcom/netflix/msl/userauth/UserAuthenticationScheme;
.super Ljava/lang/Object;
.source "UserAuthenticationScheme.java"


# static fields
.field public static final EMAIL_PASSWORD:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

.field public static final USER_ID_TOKEN:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

.field private static schemes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/userauth/UserAuthenticationScheme;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->schemes:Ljava/util/Map;

    .line 35
    new-instance v0, Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    const-string/jumbo v1, "EMAIL_PASSWORD"

    invoke-direct {v0, v1}, Lcom/netflix/msl/userauth/UserAuthenticationScheme;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->EMAIL_PASSWORD:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    .line 37
    new-instance v0, Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    const-string/jumbo v1, "USER_ID_TOKEN"

    invoke-direct {v0, v1}, Lcom/netflix/msl/userauth/UserAuthenticationScheme;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->USER_ID_TOKEN:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->name:Ljava/lang/String;

    .line 48
    sget-object v1, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->schemes:Ljava/util/Map;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->schemes:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    monitor-exit v1

    .line 51
    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getScheme(Ljava/lang/String;)Lcom/netflix/msl/userauth/UserAuthenticationScheme;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->schemes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    return-object v0
.end method

.method public static values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/netflix/msl/userauth/UserAuthenticationScheme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    sget-object v0, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->schemes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 97
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    .line 98
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 99
    :cond_1
    check-cast p1, Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    .line 100
    iget-object v0, p0, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
