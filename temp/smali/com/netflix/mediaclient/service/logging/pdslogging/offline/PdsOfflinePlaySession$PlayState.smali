.class final enum Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;
.super Ljava/lang/Enum;
.source "PdsOfflinePlaySession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

.field public static final enum PAUSED:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

.field public static final enum PLAYING:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

.field public static final enum STARTING:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

.field public static final enum STOPPED:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    const-string/jumbo v1, "STARTING"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;->STARTING:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    .line 49
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    const-string/jumbo v1, "PLAYING"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;->PLAYING:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    .line 50
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    const-string/jumbo v1, "PAUSED"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;->PAUSED:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    .line 51
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    const-string/jumbo v1, "STOPPED"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;->STOPPED:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;->STARTING:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;->PLAYING:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;->PAUSED:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;->STOPPED:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;->$VALUES:[Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;->$VALUES:[Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    return-object v0
.end method
