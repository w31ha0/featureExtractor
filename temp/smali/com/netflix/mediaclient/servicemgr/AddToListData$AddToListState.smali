.class public final enum Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;
.super Ljava/lang/Enum;
.source "AddToListData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

.field public static final enum IN_LIST:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

.field public static final enum LOADING:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

.field public static final enum NOT_IN_LIST:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    const-string/jumbo v1, "IN_LIST"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;->IN_LIST:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    const-string/jumbo v1, "NOT_IN_LIST"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;->NOT_IN_LIST:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    const-string/jumbo v1, "LOADING"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;->LOADING:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;->IN_LIST:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;->NOT_IN_LIST:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;->LOADING:Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;

    return-object v0
.end method
