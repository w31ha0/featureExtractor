.class public final enum Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;
.super Ljava/lang/Enum;
.source "PlayerPrefetchSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

.field public static final enum ContinueWatching:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

.field public static final enum DetailsPage:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

.field public static final enum DetailsPageFromSearch:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

.field public static final enum PostPlay:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;


# instance fields
.field private final mPriority:I

.field private final mSkipOnLowDrmResource:Z

.field private mSkipOnMobileNetwork:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 24
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const-string/jumbo v1, "ContinueWatching"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->ContinueWatching:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const-string/jumbo v1, "DetailsPage"

    const/4 v2, 0x1

    const/16 v3, 0xc8

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->DetailsPage:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const-string/jumbo v1, "DetailsPageFromSearch"

    const/4 v2, 0x2

    const/16 v3, 0xc8

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->DetailsPageFromSearch:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const-string/jumbo v1, "PostPlay"

    const/4 v2, 0x3

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->PostPlay:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->ContinueWatching:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->DetailsPage:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->DetailsPageFromSearch:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->PostPlay:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->mPriority:I

    .line 35
    iput-boolean p4, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->mSkipOnLowDrmResource:Z

    .line 36
    iput-boolean p5, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->mSkipOnMobileNetwork:Z

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    return-object v0
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->mPriority:I

    return v0
.end method

.method public shouldSkipOnNetwork(Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)Z
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->mobile:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->mSkipOnMobileNetwork:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public skipOnLowDrmResource()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->mSkipOnLowDrmResource:Z

    return v0
.end method
