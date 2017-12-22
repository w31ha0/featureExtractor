.class public abstract Lcom/netflix/android/widgetry/lolomo/RowConfig;
.super Ljava/lang/Object;
.source "RowConfig.java"


# static fields
.field public static final ADD_MORE:I = 0x1

.field public static final STRETCH:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;

    invoke-direct {v0}, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;-><init>()V

    .line 75
    invoke-virtual {v0, v2}, Lcom/netflix/android/widgetry/lolomo/AutoValue_RowConfig$Builder;->setFreeScroll(Z)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v2}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setLightTheme(Z)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p0}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setViewType(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 78
    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setNumberOfItemsPerPage(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v3}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setAspectRatio(F)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setNumberOfPagesToScrollOnFling(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    const/16 v1, 0x28

    .line 81
    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setMillisecondsPerInch(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v2}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setItemPadding(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v2}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setListPadding(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v3}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setPeekRatio(F)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v2}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setMaxHeight(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v2}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setAdjustStrategy(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    .line 74
    return-object v0
.end method


# virtual methods
.method public abstract adjustStrategy()I
.end method

.method public abstract aspectRatio()F
.end method

.method public abstract freeScroll()Z
.end method

.method public incrementNumberOfItemsPerPage()Lcom/netflix/android/widgetry/lolomo/RowConfig;
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->toBuilder()Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->numberOfItemsPerPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setNumberOfItemsPerPage(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->build()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v0

    return-object v0
.end method

.method public abstract itemPadding()I
.end method

.method public abstract lightTheme()Z
.end method

.method public abstract listPadding()I
.end method

.method public abstract maxHeight()I
.end method

.method public abstract millisecondsPerInch()I
.end method

.method public abstract numberOfItemsPerPage()I
.end method

.method public abstract numberOfPagesToScrollOnFling()I
.end method

.method public abstract peekRatio()F
.end method

.method public abstract recycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
.end method

.method protected abstract toBuilder()Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;
.end method

.method public abstract viewType()I
.end method
