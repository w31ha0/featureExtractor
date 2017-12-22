.class public final enum Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;
.super Ljava/lang/Enum;
.source "StopReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;

.field public static final enum SEEK:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;

.field public static final enum SKIP:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;

.field public static final enum STOPPED:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;

    const-string/jumbo v1, "STOPPED"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;->STOPPED:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;

    const-string/jumbo v1, "SEEK"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;->SEEK:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;

    const-string/jumbo v1, "SKIP"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;->SKIP:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;

    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;->STOPPED:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;->SEEK:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;->SKIP:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;->$VALUES:[Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;->$VALUES:[Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;

    return-object v0
.end method
