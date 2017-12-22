.class public Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8202;
.super Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;
.source "Config_Ab8202.java"


# static fields
.field private static final HIGH_FRICTION:I = 0x2

.field private static final LOW_FRICTION:I = 0xa

.field private static final TESTED_PEAK:F = 0.25f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;-><init>()V

    return-void
.end method

.method public static getContinueWatchingConfig(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)Lcom/netflix/android/widgetry/lolomo/RowConfig;
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 147
    invoke-static {p0}, Lcom/netflix/mediaclient/util/CWTestUtil;->isInTest(Landroid/content/Context;)Z

    move-result v2

    .line 148
    if-nez v2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeStandardNumVideosPerPage(Landroid/content/Context;Z)I

    move-result v3

    .line 150
    if-eq v3, v1, :cond_0

    if-nez v2, :cond_3

    .line 151
    :cond_0
    const/high16 v0, 0x3f100000    # 0.5625f

    .line 155
    :goto_1
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->getLomoFragOffsetRightPx(Landroid/content/Context;)I

    move-result v2

    .line 156
    invoke-static {p1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->builder(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v4

    new-instance v5, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v5}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;-><init>()V

    .line 157
    invoke-virtual {v4, v5}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v4

    .line 158
    invoke-virtual {v4, v3}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setNumberOfItemsPerPage(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v4

    .line 159
    invoke-virtual {v4, v1}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setNumberOfPagesToScrollOnFling(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v4

    .line 160
    invoke-virtual {v4, v0}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setAspectRatio(F)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {v0, v2}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setListPadding(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    .line 162
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setLightTheme(Z)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a019e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setItemPadding(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    .line 165
    if-le v3, v1, :cond_1

    .line 167
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8202;->getLomoConfig(Landroid/content/Context;I)Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->peekRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setPeekRatio(F)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    .line 171
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->build()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v0

    return-object v0

    .line 148
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 153
    :cond_3
    const v0, 0x3fb70a3d    # 1.43f

    goto :goto_1
.end method

.method public static getLomoConfig(Landroid/content/Context;I)Lcom/netflix/android/widgetry/lolomo/RowConfig;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8202;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    .line 46
    invoke-static {p0, v0, p1}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8202;->getRowConfigBuilderForCell(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->build()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v0

    return-object v0
.end method

.method private static getLomoCoverRecycledViewPool(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    .line 131
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v0

    .line 132
    new-instance v1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;-><init>()V

    .line 135
    invoke-static {v4, v0}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->getNumVideosPerPageTableByOrientation(II)I

    move-result v2

    add-int/2addr v2, v5

    .line 137
    invoke-static {v5, v0}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->getNumVideosPerPageTableByOrientation(II)I

    move-result v0

    add-int/2addr v0, v5

    mul-int/2addr v0, v2

    .line 134
    invoke-virtual {v1, v3, v0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 140
    invoke-virtual {v1, v4, v3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 141
    return-object v1
.end method

.method public static getRowConfigBuilderForCell(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3e800000    # 0.25f

    .line 80
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8202$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 109
    invoke-static {p2}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->builder(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v3}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setNumberOfPagesToScrollOnFling(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    .line 115
    :goto_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->getNumVideosPerPageTableByOrientation(II)I

    move-result v1

    .line 116
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->getLomoFragOffsetRightPx(Landroid/content/Context;)I

    move-result v2

    .line 117
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8202;->getLomoCoverRecycledViewPool(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v3

    .line 118
    invoke-virtual {v3, v1}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setNumberOfItemsPerPage(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    const v3, 0x3fb70a3d    # 1.43f

    .line 119
    invoke-virtual {v1, v3}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setAspectRatio(F)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    .line 120
    invoke-virtual {v1, v2}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setListPadding(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a019e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setItemPadding(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v1

    .line 122
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setLightTheme(Z)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    .line 124
    return-object v0

    .line 83
    :pswitch_0
    invoke-static {p2}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->builder(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v3}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setNumberOfPagesToScrollOnFling(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v2}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setPeekRatio(F)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-static {p2}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->builder(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v3}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setFreeScroll(Z)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0, v2}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setPeekRatio(F)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    goto :goto_0

    .line 95
    :pswitch_2
    invoke-static {p2}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->builder(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 96
    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setNumberOfPagesToScrollOnFling(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v2}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setPeekRatio(F)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    goto :goto_0

    .line 101
    :pswitch_3
    invoke-static {p2}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->builder(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    const/16 v1, 0xa

    .line 102
    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setNumberOfPagesToScrollOnFling(I)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v2}, Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;->setPeekRatio(F)Lcom/netflix/android/widgetry/lolomo/RowConfig$Builder;

    move-result-object v0

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static isInTest(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 41
    if-eqz p0, :cond_0

    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8202;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_1:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCellCount()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x5

    return v0
.end method

.method public getFriendlyName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "Lolomo Free-Scrolling Rows"

    return-object v0
.end method

.method public getFriendlyNameForCell(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8202$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 68
    const-string/jumbo v0, "Control"

    :goto_0
    return-object v0

    .line 61
    :pswitch_0
    const-string/jumbo v0, "Bigger Peek"

    goto :goto_0

    .line 62
    :pswitch_1
    const-string/jumbo v0, "Free-Scroll"

    goto :goto_0

    .line 63
    :pswitch_2
    const-string/jumbo v0, "Snap High Friction"

    goto :goto_0

    .line 64
    :pswitch_3
    const-string/jumbo v0, "Snap Low Friction"

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "persistent_ab8202"

    return-object v0
.end method

.method public getTestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "8202"

    return-object v0
.end method
