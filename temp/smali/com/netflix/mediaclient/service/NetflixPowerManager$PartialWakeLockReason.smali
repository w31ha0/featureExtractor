.class public final enum Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;
.super Ljava/lang/Enum;
.source "NetflixPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;

.field public static final enum DownloadGoingOn:Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;

    const-string/jumbo v1, "DownloadGoingOn"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;->DownloadGoingOn:Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;

    sget-object v1, Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;->DownloadGoingOn:Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;->$VALUES:[Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;->$VALUES:[Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/NetflixPowerManager$PartialWakeLockReason;

    return-object v0
.end method
