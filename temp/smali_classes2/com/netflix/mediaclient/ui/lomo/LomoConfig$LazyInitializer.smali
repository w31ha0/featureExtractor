.class Lcom/netflix/mediaclient/ui/lomo/LomoConfig$LazyInitializer;
.super Ljava/lang/Object;
.source "LomoConfig.java"


# static fields
.field private static final lomoFragOffsetRightTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/mediaclient/ui/experience/BrowseExperience;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final numCWVideosPerPageTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private static final numVideosPerPageTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/mediaclient/ui/experience/BrowseExperience;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$LazyInitializer;->numVideosPerPageTable:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$LazyInitializer;->lomoFragOffsetRightTable:Ljava/util/Map;

    .line 39
    invoke-static {}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$LazyInitializer;->initVideosPerPageMapStandard()V

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$LazyInitializer;->numCWVideosPerPageTable:Landroid/util/SparseArray;

    .line 67
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 68
    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 70
    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 71
    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 72
    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$LazyInitializer;->numCWVideosPerPageTable:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 75
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 78
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 79
    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$LazyInitializer;->numCWVideosPerPageTable:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I
    .locals 1

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$LazyInitializer;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(II)I
    .locals 1

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$LazyInitializer;->getNumVideosPerPageTableByOrientation(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/content/Context;Z)I
    .locals 1

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$LazyInitializer;->computeStandardNumVideosPerPage(Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$LazyInitializer;->getLomoFragOffsetRightPx(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I
    .locals 4

    .prologue
    .line 87
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->BILLBOARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne p1, v0, :cond_0

    .line 88
    const/16 v0, 0xa

    .line 111
    :goto_0
    return v0

    .line 91
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v1

    .line 93
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isDisplayPageRefresh()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne p1, v0, :cond_1

    .line 95
    const/4 v0, 0x6

    goto :goto_0

    .line 97
    :cond_1
    const/16 v0, 0xc

    goto :goto_0

    .line 104
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$1;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$LoMoType:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 111
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/service/configuration/persistent/LolomoPayloadABTestConfig;->getNumberVideosToFetchPerRow(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 106
    :pswitch_0
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$LazyInitializer;->numCWVideosPerPageTable:Landroid/util/SparseArray;

    const/4 v2, 0x2

    .line 107
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$LazyInitializer;->numCWVideosPerPageTable:Landroid/util/SparseArray;

    const/4 v3, 0x1

    .line 108
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    mul-int/2addr v0, v2

    const/4 v1, 0x4

    .line 107
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 106
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/CWTestUtil;->computeNumVideosToFetchPerBatch(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static computeStandardNumVideosPerPage(Landroid/content/Context;Z)I
    .locals 2

    .prologue
    .line 133
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v0

    .line 134
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v1

    .line 136
    if-eqz p1, :cond_0

    .line 137
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$LazyInitializer;->getNumCWVideosPerPageTableByOrientation(II)I

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$LazyInitializer;->getNumVideosPerPageTableByOrientation(II)I

    move-result v0

    goto :goto_0
.end method

.method private static getLomoFragOffsetRightPx(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 144
    invoke-static {}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$LazyInitializer;->getPeak()I

    move-result v0

    .line 145
    int-to-float v0, v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static getNumCWVideosPerPageTableByOrientation(II)I
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$LazyInitializer;->numCWVideosPerPageTable:Landroid/util/SparseArray;

    .line 124
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 125
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 123
    return v0
.end method

.method private static getNumVideosPerPageTableByOrientation(II)I
    .locals 2

    .prologue
    .line 116
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$LazyInitializer;->numVideosPerPageTable:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 117
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 118
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 119
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 116
    return v0
.end method

.method private static getPeak()I
    .locals 1

    .prologue
    .line 129
    const/16 v0, 0x8

    return v0
.end method

.method private static initVideosPerPageMapStandard()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 45
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 47
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    invoke-virtual {v1, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 54
    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    const/4 v2, 0x5

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    const/4 v2, 0x6

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 58
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LomoConfig$LazyInitializer;->numVideosPerPageTable:Ljava/util/Map;

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method
