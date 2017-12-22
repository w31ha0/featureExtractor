.class public final enum Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;
.super Ljava/lang/Enum;
.source "WatchState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

.field public static final enum GEO_BLOCKED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

.field public static final enum LICENSE_EXPIRED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

.field public static final enum NOT_WATCHABLE_DUE_TO_NOT_ENOUGH_DATA:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

.field public static final enum PLAY_WINDOW_EXPIRED_BUT_RENEWABLE:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

.field public static final enum PLAY_WINDOW_EXPIRED_FINAL:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

.field public static final enum VIEW_WINDOW_EXPIRED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

.field public static final enum WATCHING_ALLOWED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    const-string/jumbo v1, "NOT_WATCHABLE_DUE_TO_NOT_ENOUGH_DATA"

    invoke-direct {v0, v1, v4, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->NOT_WATCHABLE_DUE_TO_NOT_ENOUGH_DATA:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    const-string/jumbo v1, "WATCHING_ALLOWED"

    invoke-direct {v0, v1, v5, v5}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->WATCHING_ALLOWED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    const-string/jumbo v1, "LICENSE_EXPIRED"

    invoke-direct {v0, v1, v6, v6}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->LICENSE_EXPIRED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    const-string/jumbo v1, "PLAY_WINDOW_EXPIRED_BUT_RENEWABLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v7}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->PLAY_WINDOW_EXPIRED_BUT_RENEWABLE:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    const-string/jumbo v1, "PLAY_WINDOW_EXPIRED_FINAL"

    invoke-direct {v0, v1, v7, v8}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->PLAY_WINDOW_EXPIRED_FINAL:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    const-string/jumbo v1, "VIEW_WINDOW_EXPIRED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->VIEW_WINDOW_EXPIRED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    const-string/jumbo v1, "GEO_BLOCKED"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->GEO_BLOCKED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    .line 10
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    aput-object v2, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->NOT_WATCHABLE_DUE_TO_NOT_ENOUGH_DATA:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->WATCHING_ALLOWED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->LICENSE_EXPIRED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->PLAY_WINDOW_EXPIRED_BUT_RENEWABLE:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    aput-object v2, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->PLAY_WINDOW_EXPIRED_FINAL:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->VIEW_WINDOW_EXPIRED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    aput-object v1, v0, v8

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->GEO_BLOCKED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->mValue:I

    .line 24
    return-void
.end method

.method public static getStateByValue(I)Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;
    .locals 5

    .prologue
    .line 32
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->values()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 33
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->getIntValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 37
    :goto_1
    return-object v0

    .line 32
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 37
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->mValue:I

    return v0
.end method

.method public hasError()Z
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->getIntValue()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->WATCHING_ALLOWED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->getIntValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
