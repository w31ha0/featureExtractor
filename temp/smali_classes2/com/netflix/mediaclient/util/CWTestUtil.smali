.class public Lcom/netflix/mediaclient/util/CWTestUtil;
.super Ljava/lang/Object;
.source "CWTestUtil.java"


# static fields
.field public static final NUMBER_OF_CW_VIDEOS_RELATIVE_TO_CONTROL:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeNumVideosToFetchPerBatch(Landroid/content/Context;I)I
    .locals 1

    .prologue
    .line 44
    invoke-static {p0}, Lcom/netflix/mediaclient/util/CWTestUtil;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    mul-int/lit8 p1, p1, 0x3

    :cond_0
    return p1
.end method

.method public static createCWViewForTest(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/lomo/CwView;
    .locals 2

    .prologue
    .line 51
    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/ContinueWatchingProgBar;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    .line 52
    sget-object v1, Lcom/netflix/mediaclient/util/CWTestUtil$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 55
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/CwView;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lomo/CwView;-><init>(Landroid/content/Context;)V

    .line 62
    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/CwTestView;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lomo/CwTestView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 60
    :pswitch_1
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/CwTestVTwoView;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/lomo/CwTestVTwoView;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    .line 62
    :pswitch_2
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/CwTestVTwoView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/lomo/CwTestVTwoView;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getCWViewClass(Landroid/content/Context;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 70
    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/ContinueWatchingProgBar;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    .line 71
    sget-object v1, Lcom/netflix/mediaclient/util/CWTestUtil$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 74
    const-class v0, Lcom/netflix/mediaclient/ui/lomo/CwView;

    .line 80
    :goto_0
    return-object v0

    .line 77
    :pswitch_0
    const-class v0, Lcom/netflix/mediaclient/ui/lomo/CwTestView;

    goto :goto_0

    .line 80
    :pswitch_1
    const-class v0, Lcom/netflix/mediaclient/ui/lomo/CwTestVTwoView;

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isDirectToPlayback(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 34
    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/ContinueWatchingProgBar;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_3:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInTest(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 25
    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/ContinueWatchingProgBar;

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
