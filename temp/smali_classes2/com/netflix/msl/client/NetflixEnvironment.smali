.class public final enum Lcom/netflix/msl/client/NetflixEnvironment;
.super Ljava/lang/Enum;
.source "NetflixEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/msl/client/NetflixEnvironment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/msl/client/NetflixEnvironment;

.field public static final enum PROD:Lcom/netflix/msl/client/NetflixEnvironment;

.field public static final enum STAGING:Lcom/netflix/msl/client/NetflixEnvironment;

.field public static final enum TEST:Lcom/netflix/msl/client/NetflixEnvironment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/netflix/msl/client/NetflixEnvironment;

    const-string/jumbo v1, "PROD"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/client/NetflixEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/client/NetflixEnvironment;->PROD:Lcom/netflix/msl/client/NetflixEnvironment;

    .line 5
    new-instance v0, Lcom/netflix/msl/client/NetflixEnvironment;

    const-string/jumbo v1, "TEST"

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/client/NetflixEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/client/NetflixEnvironment;->TEST:Lcom/netflix/msl/client/NetflixEnvironment;

    .line 6
    new-instance v0, Lcom/netflix/msl/client/NetflixEnvironment;

    const-string/jumbo v1, "STAGING"

    invoke-direct {v0, v1, v4}, Lcom/netflix/msl/client/NetflixEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/client/NetflixEnvironment;->STAGING:Lcom/netflix/msl/client/NetflixEnvironment;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/msl/client/NetflixEnvironment;

    sget-object v1, Lcom/netflix/msl/client/NetflixEnvironment;->PROD:Lcom/netflix/msl/client/NetflixEnvironment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/msl/client/NetflixEnvironment;->TEST:Lcom/netflix/msl/client/NetflixEnvironment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/msl/client/NetflixEnvironment;->STAGING:Lcom/netflix/msl/client/NetflixEnvironment;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/msl/client/NetflixEnvironment;->$VALUES:[Lcom/netflix/msl/client/NetflixEnvironment;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/client/NetflixEnvironment;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/netflix/msl/client/NetflixEnvironment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/client/NetflixEnvironment;

    return-object v0
.end method

.method public static values()[Lcom/netflix/msl/client/NetflixEnvironment;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/netflix/msl/client/NetflixEnvironment;->$VALUES:[Lcom/netflix/msl/client/NetflixEnvironment;

    invoke-virtual {v0}, [Lcom/netflix/msl/client/NetflixEnvironment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/client/NetflixEnvironment;

    return-object v0
.end method
