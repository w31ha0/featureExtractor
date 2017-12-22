.class public final enum Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;
.super Ljava/lang/Enum;
.source "UserActionLogging.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

.field public static final enum AddCachedVideoCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

.field public static final enum PauseDownloadCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

.field public static final enum RemoveAllCachedVideosCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

.field public static final enum RemoveCachedVideoAndPlayNextCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

.field public static final enum RemoveCachedVideoCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

.field public static final enum ResumeDownloadCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

.field public static final enum RetryDownloadCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

.field public static final enum androidWidgetCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

.field public static final enum rating:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 393
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    const-string/jumbo v1, "rating"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->rating:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    .line 394
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    const-string/jumbo v1, "androidWidgetCommand"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->androidWidgetCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    .line 397
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    const-string/jumbo v1, "AddCachedVideoCommand"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->AddCachedVideoCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    .line 398
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    const-string/jumbo v1, "RemoveCachedVideoCommand"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->RemoveCachedVideoCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    .line 399
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    const-string/jumbo v1, "RemoveAllCachedVideosCommand"

    invoke-direct {v0, v1, v7}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->RemoveAllCachedVideosCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    .line 400
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    const-string/jumbo v1, "RemoveCachedVideoAndPlayNextCommand"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->RemoveCachedVideoAndPlayNextCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    .line 401
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    const-string/jumbo v1, "PauseDownloadCommand"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->PauseDownloadCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    .line 402
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    const-string/jumbo v1, "ResumeDownloadCommand"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->ResumeDownloadCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    .line 403
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    const-string/jumbo v1, "RetryDownloadCommand"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->RetryDownloadCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    .line 392
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->rating:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->androidWidgetCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->AddCachedVideoCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->RemoveCachedVideoCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->RemoveAllCachedVideosCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->RemoveCachedVideoAndPlayNextCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->PauseDownloadCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->ResumeDownloadCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->RetryDownloadCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

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
    .line 392
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;
    .locals 1

    .prologue
    .line 392
    const-class v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;
    .locals 1

    .prologue
    .line 392
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    return-object v0
.end method
