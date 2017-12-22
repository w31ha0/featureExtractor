.class public final Lcom/netflix/mediaclient/ui/lomo/LomoConfig;
.super Ljava/lang/Object;
.source "LomoConfig.java"


# static fields
.field public static final NUM_BILLBOARDS_TO_FETCH_PER_BATCH:I = 0xa


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I
    .locals 1

    .prologue
    .line 151
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$LazyInitializer;->access$000(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v0

    return v0
.end method

.method public static computeStandardNumVideosPerPage(Landroid/content/Context;Z)I
    .locals 1

    .prologue
    .line 159
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$LazyInitializer;->access$200(Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method public static getLomoFragOffsetRightPx(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 164
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$LazyInitializer;->access$300(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getNumVideosPerPageTableByOrientation(II)I
    .locals 1

    .prologue
    .line 155
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$LazyInitializer;->access$100(II)I

    move-result v0

    return v0
.end method
