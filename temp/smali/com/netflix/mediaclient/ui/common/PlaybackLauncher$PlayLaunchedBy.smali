.class public final enum Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;
.super Ljava/lang/Enum;
.source "PlaybackLauncher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

.field public static final enum DetailsScreen:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

.field public static final enum HomeScreen:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

.field public static final enum LaunchActivity:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

.field public static final enum PlayerScreen:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

.field public static final enum Unknown:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    const-string/jumbo v1, "HomeScreen"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->HomeScreen:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    const-string/jumbo v1, "DetailsScreen"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->DetailsScreen:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    .line 44
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    const-string/jumbo v1, "PlayerScreen"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->PlayerScreen:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    .line 45
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    const-string/jumbo v1, "LaunchActivity"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->LaunchActivity:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    .line 46
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    const-string/jumbo v1, "Unknown"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->Unknown:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->HomeScreen:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->DetailsScreen:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->PlayerScreen:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->LaunchActivity:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->Unknown:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->$VALUES:[Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->$VALUES:[Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlayLaunchedBy;

    return-object v0
.end method
