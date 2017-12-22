.class public final enum Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;
.super Ljava/lang/Enum;
.source "IMdxSharedState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

.field public static final enum Loading:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

.field public static final enum Paused:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

.field public static final enum Playing:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

.field public static final enum Stopped:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

.field public static final enum Transitioning:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    const-string/jumbo v1, "Stopped"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Stopped:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    const-string/jumbo v1, "Loading"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Loading:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    const-string/jumbo v1, "Transitioning"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Transitioning:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    const-string/jumbo v1, "Playing"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Playing:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    const-string/jumbo v1, "Paused"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Paused:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Stopped:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Loading:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Transitioning:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Playing:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Paused:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    return-object v0
.end method
