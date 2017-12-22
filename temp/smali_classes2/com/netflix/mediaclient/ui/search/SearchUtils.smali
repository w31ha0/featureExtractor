.class public Lcom/netflix/mediaclient/ui/search/SearchUtils;
.super Ljava/lang/Object;
.source "SearchUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchUtils"

.field private static currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

.field private static final numPeopleColumnsTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private static final numRelatedColumnsTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private static final numVideoColumnsTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numRelatedColumnsTable:Landroid/util/SparseArray;

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numPeopleColumnsTable:Landroid/util/SparseArray;

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numVideoColumnsTable:Landroid/util/SparseArray;

    .line 34
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->TABLET:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->setSearchExperience(Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;)V

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeMaxResultsForPeople(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 185
    const/16 v0, 0x8

    .line 186
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getNumPeopleGridCols(Landroid/content/Context;)I

    move-result v2

    .line 187
    if-lez v2, :cond_0

    .line 188
    const/4 v1, -0x1

    .line 189
    :goto_0
    if-eqz v1, :cond_0

    .line 190
    add-int/lit8 v1, v0, 0x1

    .line 191
    rem-int v0, v1, v2

    move v3, v0

    move v0, v1

    move v1, v3

    goto :goto_0

    .line 195
    :cond_0
    return v0
.end method

.method private static computeMaxResultsForVideos(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 164
    const/16 v0, 0x15

    .line 166
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getNumVideoGridCols(Landroid/content/Context;)I

    move-result v1

    .line 167
    if-lez v1, :cond_0

    .line 168
    rem-int v1, v0, v1

    .line 169
    if-eqz v1, :cond_0

    .line 170
    sub-int/2addr v0, v1

    .line 174
    :cond_0
    return v0
.end method

.method public static getMaxResultsPeople(Landroid/content/Context;)I
    .locals 6

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x1

    .line 199
    if-nez p0, :cond_0

    .line 200
    const-string/jumbo v1, "SearchUtils"

    const-string/jumbo v2, "getMaxResultsPeople, Context is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    return v0

    .line 204
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v2

    .line 205
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v3

    .line 207
    sget-object v4, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v5, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 217
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->computeMaxResultsForPeople(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 210
    :pswitch_0
    if-ne v2, v0, :cond_2

    if-eq v3, v1, :cond_1

    const/4 v0, 0x4

    if-ne v3, v0, :cond_2

    :cond_1
    move v0, v1

    .line 211
    goto :goto_0

    .line 214
    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->computeMaxResultsForPeople(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMaxResultsRelated(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x1

    .line 223
    if-nez p0, :cond_0

    .line 224
    const-string/jumbo v1, "SearchUtils"

    const-string/jumbo v2, "getMaxResultsRelated, Context is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_0
    return v0

    .line 227
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v2

    .line 228
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v3

    .line 230
    if-ne v2, v0, :cond_2

    if-eq v3, v1, :cond_1

    const/4 v0, 0x4

    if-ne v3, v0, :cond_2

    :cond_1
    move v0, v1

    .line 231
    goto :goto_0

    .line 234
    :cond_2
    const/16 v0, 0x28

    goto :goto_0
.end method

.method public static getMaxResultsVideos(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 238
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->computeMaxResultsForVideos(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getNumPeopleGridCols(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 109
    if-nez p0, :cond_0

    .line 110
    const-string/jumbo v0, "SearchUtils"

    const-string/jumbo v1, "getNumPeopleGridCols, Context is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x2

    .line 116
    :goto_0
    return v0

    .line 114
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v0

    .line 115
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v1

    .line 116
    sget-object v2, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numPeopleColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getNumRelatedGridCols(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 131
    if-nez p0, :cond_0

    .line 132
    const-string/jumbo v0, "SearchUtils"

    const-string/jumbo v1, "getNumRelatedGridCols, Context is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x2

    .line 138
    :goto_0
    return v0

    .line 136
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v0

    .line 137
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v1

    .line 138
    sget-object v2, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numRelatedColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getNumVideoGridCols(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 120
    if-nez p0, :cond_0

    .line 121
    const-string/jumbo v0, "SearchUtils"

    const-string/jumbo v1, "getNumVideoGridCols, Context is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v0, 0x2

    .line 127
    :goto_0
    return v0

    .line 125
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v0

    .line 126
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v1

    .line 127
    sget-object v2, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numVideoColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getPeopleImageAspectRatio()D
    .locals 4

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 91
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 95
    :pswitch_0
    return-wide v2

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSearchExperience()Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    return-object v0
.end method

.method public static getSearchFragLayout()I
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 57
    const v0, 0x7f0300f1

    :goto_0
    return v0

    .line 55
    :pswitch_0
    const v0, 0x7f0300f2

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSearchViewLayoutPeople()I
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 66
    const v0, 0x7f0300ee

    :goto_0
    return v0

    .line 64
    :pswitch_0
    const v0, 0x7f0300f0

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSearchViewLayoutRelated()I
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 75
    const v0, 0x7f0300ef

    :goto_0
    return v0

    .line 73
    :pswitch_0
    const v0, 0x7f0300f0

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getVideoImageAspectRatio()D
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 85
    const-wide v0, 0x3ff6e147a0000000L    # 1.4299999475479126

    :goto_0
    return-wide v0

    .line 83
    :pswitch_0
    const-wide/high16 v0, 0x3fe2000000000000L    # 0.5625

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static initColumnsTable()V
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 151
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->intColumnTablePhoneLandscape()V

    .line 152
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->intColumnTablePhonePortrait()V

    .line 154
    :goto_0
    return-void

    .line 147
    :pswitch_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->intColumnTableTabletLandscape()V

    .line 148
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->intColumnTableTabletPortrait()V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static intColumnTablePhoneLandscape()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 268
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 269
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 270
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 272
    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 273
    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 274
    invoke-virtual {v2, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 276
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 277
    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 278
    invoke-virtual {v2, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 280
    invoke-virtual {v0, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 281
    invoke-virtual {v1, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 282
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 284
    const/4 v3, 0x6

    invoke-virtual {v0, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 285
    const/4 v3, 0x6

    invoke-virtual {v1, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 286
    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 288
    sget-object v3, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numVideoColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v3, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numPeopleColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 290
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numRelatedColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 291
    return-void
.end method

.method private static intColumnTablePhonePortrait()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    .line 242
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 243
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 244
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 246
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 247
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 248
    invoke-virtual {v2, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 250
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 251
    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 252
    invoke-virtual {v2, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 254
    invoke-virtual {v0, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 255
    invoke-virtual {v1, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 256
    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 258
    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 259
    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 260
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 262
    sget-object v3, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numVideoColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numPeopleColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numRelatedColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 265
    return-void
.end method

.method private static intColumnTableTabletLandscape()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 320
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 321
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 322
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 324
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 325
    invoke-virtual {v1, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 326
    invoke-virtual {v2, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 328
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 329
    const/4 v3, 0x6

    invoke-virtual {v1, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 330
    invoke-virtual {v2, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 332
    invoke-virtual {v0, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 333
    invoke-virtual {v1, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 334
    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 336
    invoke-virtual {v0, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 337
    invoke-virtual {v1, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 338
    invoke-virtual {v2, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 340
    sget-object v3, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numVideoColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v3, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 341
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numPeopleColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numRelatedColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    return-void
.end method

.method private static intColumnTableTabletPortrait()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 294
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 295
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 296
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 298
    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 299
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 300
    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 302
    invoke-virtual {v0, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 303
    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 304
    invoke-virtual {v2, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 306
    invoke-virtual {v0, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 307
    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 308
    invoke-virtual {v2, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 310
    invoke-virtual {v0, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 311
    invoke-virtual {v1, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 312
    invoke-virtual {v2, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 314
    sget-object v3, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numVideoColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numPeopleColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 316
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->numRelatedColumnsTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 317
    return-void
.end method

.method public static sanitizeQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 383
    const-string/jumbo v0, "\\s+"

    const-string/jumbo v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    return-object v0
.end method

.method public static setSearchExperience(Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;)V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    if-eq p0, v0, :cond_0

    .line 43
    sput-object p0, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    .line 44
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->initColumnsTable()V

    .line 46
    :cond_0
    return-void
.end method

.method public static shouldHandleBackPress()Z
    .locals 2

    .prologue
    .line 364
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 368
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 366
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static shouldOpenNewActivityForRelated()Z
    .locals 2

    .prologue
    .line 100
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 104
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 102
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static shouldResetQueryOnTouch()Z
    .locals 2

    .prologue
    .line 373
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 377
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 375
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static shouldShowVerticalBoxArt()Z
    .locals 2

    .prologue
    .line 346
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 350
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 348
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static shouldUpperCaseTitleLabels()Z
    .locals 2

    .prologue
    .line 355
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils;->currentExperience:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 359
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 357
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
