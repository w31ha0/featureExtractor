.class public final enum Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;
.super Ljava/lang/Enum;
.source "UserActionLogging.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

.field public static final enum PostPlayNextEpisode:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

.field public static final enum PostPlaySuggestions:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 385
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    const-string/jumbo v1, "PostPlayNextEpisode"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;->PostPlayNextEpisode:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    .line 386
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    const-string/jumbo v1, "PostPlaySuggestions"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;->PostPlaySuggestions:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    .line 384
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;->PostPlayNextEpisode:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;->PostPlaySuggestions:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

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
    .line 384
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;
    .locals 1

    .prologue
    .line 384
    const-class v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    return-object v0
.end method
