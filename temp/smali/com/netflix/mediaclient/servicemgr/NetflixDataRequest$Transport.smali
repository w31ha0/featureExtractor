.class public final enum Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;
.super Ljava/lang/Enum;
.source "NetflixDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

.field public static final enum msl:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

.field public static final enum web:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    const-string/jumbo v1, "msl"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;->msl:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    const-string/jumbo v1, "web"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;->web:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;->msl:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;->web:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    return-object v0
.end method
