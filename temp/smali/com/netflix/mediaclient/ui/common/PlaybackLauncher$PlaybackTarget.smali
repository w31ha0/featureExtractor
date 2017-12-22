.class public final enum Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;
.super Ljava/lang/Enum;
.source "PlaybackLauncher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

.field public static final enum local:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

.field public static final enum localButDisabled:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

.field public static final enum remote:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

.field public static final enum remoteButNotAvailable:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 370
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    const-string/jumbo v1, "local"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->local:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    .line 371
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    const-string/jumbo v1, "remote"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->remote:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    .line 372
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    const-string/jumbo v1, "remoteButNotAvailable"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->remoteButNotAvailable:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    .line 373
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    const-string/jumbo v1, "localButDisabled"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->localButDisabled:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    .line 369
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->local:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->remote:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->remoteButNotAvailable:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->localButDisabled:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->$VALUES:[Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

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
    .line 369
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;
    .locals 1

    .prologue
    .line 369
    const-class v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->$VALUES:[Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    return-object v0
.end method
