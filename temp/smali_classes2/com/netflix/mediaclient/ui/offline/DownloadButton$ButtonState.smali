.class public final enum Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;
.super Ljava/lang/Enum;
.source "DownloadButton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

.field public static final enum AVAILABLE:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

.field public static final enum DOWNLOADING:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

.field public static final enum ERROR:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

.field public static final enum NOT_AVAILABLE:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

.field public static final enum PAUSED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

.field public static final enum PRE_QUEUED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

.field public static final enum QUEUED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

.field public static final enum SAVED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    const-string/jumbo v1, "AVAILABLE"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->AVAILABLE:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 72
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    const-string/jumbo v1, "NOT_AVAILABLE"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->NOT_AVAILABLE:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 73
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    const-string/jumbo v1, "SAVED"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->SAVED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 74
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    const-string/jumbo v1, "DOWNLOADING"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->DOWNLOADING:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 75
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    const-string/jumbo v1, "PAUSED"

    invoke-direct {v0, v1, v7}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->PAUSED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 76
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    const-string/jumbo v1, "QUEUED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->QUEUED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 77
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    const-string/jumbo v1, "PRE_QUEUED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->PRE_QUEUED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 78
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    const-string/jumbo v1, "ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ERROR:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 70
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->AVAILABLE:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->NOT_AVAILABLE:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->SAVED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->DOWNLOADING:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->PAUSED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->QUEUED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->PRE_QUEUED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ERROR:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->$VALUES:[Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->$VALUES:[Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object v0
.end method
