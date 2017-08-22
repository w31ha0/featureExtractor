.class public Lcom/mopub/mraid/MraidBridge;
.super Ljava/lang/Object;
.source "MraidBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidBridge$MraidWebView;,
        Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;
    }
.end annotation


# instance fields
.field private final mAdReport:Lcom/mopub/common/AdReport;

.field private mHasLoaded:Z

.field private mIsClicked:Z

.field private mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMraidWebViewClient:Landroid/webkit/WebViewClient;

.field private final mPlacementType:Lcom/mopub/mraid/PlacementType;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V
    .locals 1
    .param p1, "adReport"    # Lcom/mopub/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "placementType"    # Lcom/mopub/mraid/PlacementType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 88
    new-instance v0, Lcom/mopub/mraid/MraidNativeCommandHandler;

    invoke-direct {v0}, Lcom/mopub/mraid/MraidNativeCommandHandler;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/mraid/MraidBridge;-><init>(Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;Lcom/mopub/mraid/MraidNativeCommandHandler;)V

    .line 89
    return-void
.end method

.method constructor <init>(Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;Lcom/mopub/mraid/MraidNativeCommandHandler;)V
    .locals 1
    .param p1, "adReport"    # Lcom/mopub/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "placementType"    # Lcom/mopub/mraid/PlacementType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "mraidNativeCommandHandler"    # Lcom/mopub/mraid/MraidNativeCommandHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance v0, Lcom/mopub/mraid/MraidBridge$5;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidBridge$5;-><init>(Lcom/mopub/mraid/MraidBridge;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebViewClient:Landroid/webkit/WebViewClient;

    .line 94
    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge;->mAdReport:Lcom/mopub/common/AdReport;

    .line 95
    iput-object p2, p0, Lcom/mopub/mraid/MraidBridge;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    .line 96
    iput-object p3, p0, Lcom/mopub/mraid/MraidBridge;->mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mraid/MraidBridge;)Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidBridge;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mopub/mraid/MraidBridge;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidBridge;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidBridge;->mIsClicked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mopub/mraid/MraidBridge;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mraid/MraidBridge;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/mopub/mraid/MraidBridge;->mIsClicked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mopub/mraid/MraidBridge;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mraid/MraidBridge;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mopub/mraid/MraidBridge;->handlePageFinished()V

    return-void
.end method

.method static synthetic access$300(Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidJavascriptCommand;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mraid/MraidBridge;
    .param p1, "x1"    # Lcom/mopub/mraid/MraidJavascriptCommand;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/mopub/mraid/MraidBridge;->fireErrorEvent(Lcom/mopub/mraid/MraidJavascriptCommand;Ljava/lang/String;)V

    return-void
.end method

.method private checkRange(III)I
    .locals 3
    .param p1, "value"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 495
    if-lt p1, p2, :cond_0

    if-le p1, p3, :cond_1

    .line 496
    :cond_0
    new-instance v0, Lcom/mopub/mraid/MraidCommandException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Integer parameter out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_1
    return p1
.end method

.method private fireErrorEvent(Lcom/mopub/mraid/MraidJavascriptCommand;Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Lcom/mopub/mraid/MraidJavascriptCommand;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidbridge.notifyErrorEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 227
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidJavascriptCommand;->toJavascriptString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 228
    invoke-static {p2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidBridge;->injectJavaScript(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method private fireNativeCommandCompleteEvent(Lcom/mopub/mraid/MraidJavascriptCommand;)V
    .locals 2
    .param p1, "command"    # Lcom/mopub/mraid/MraidJavascriptCommand;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidbridge.nativeCallComplete("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 233
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidJavascriptCommand;->toJavascriptString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidBridge;->injectJavaScript(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method private handlePageFinished()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidBridge;->mHasLoaded:Z

    if-eqz v0, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mraid/MraidBridge;->mHasLoaded:Z

    .line 365
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface {v0}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onPageLoaded()V

    goto :goto_0
.end method

.method private parseBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 510
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    const/4 v0, 0x1

    .line 513
    :goto_0
    return v0

    .line 512
    :cond_0
    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    const/4 v0, 0x0

    goto :goto_0

    .line 515
    :cond_1
    new-instance v0, Lcom/mopub/mraid/MraidCommandException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid boolean parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseBoolean(Ljava/lang/String;Z)Z
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 503
    if-nez p1, :cond_0

    .line 506
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidBridge;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0
.end method

.method private parseClosePosition(Ljava/lang/String;Lcom/mopub/common/CloseableLayout$ClosePosition;)Lcom/mopub/common/CloseableLayout$ClosePosition;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # Lcom/mopub/common/CloseableLayout$ClosePosition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    .end local p2    # "defaultValue":Lcom/mopub/common/CloseableLayout$ClosePosition;
    :goto_0
    return-object p2

    .line 453
    .restart local p2    # "defaultValue":Lcom/mopub/common/CloseableLayout$ClosePosition;
    :cond_0
    const-string v0, "top-left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    sget-object p2, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_LEFT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    goto :goto_0

    .line 455
    :cond_1
    const-string v0, "top-right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    sget-object p2, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_RIGHT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    goto :goto_0

    .line 457
    :cond_2
    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 458
    sget-object p2, Lcom/mopub/common/CloseableLayout$ClosePosition;->CENTER:Lcom/mopub/common/CloseableLayout$ClosePosition;

    goto :goto_0

    .line 459
    :cond_3
    const-string v0, "bottom-left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 460
    sget-object p2, Lcom/mopub/common/CloseableLayout$ClosePosition;->BOTTOM_LEFT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    goto :goto_0

    .line 461
    :cond_4
    const-string v0, "bottom-right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 462
    sget-object p2, Lcom/mopub/common/CloseableLayout$ClosePosition;->BOTTOM_RIGHT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    goto :goto_0

    .line 463
    :cond_5
    const-string v0, "top-center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 464
    sget-object p2, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_CENTER:Lcom/mopub/common/CloseableLayout$ClosePosition;

    goto :goto_0

    .line 465
    :cond_6
    const-string v0, "bottom-center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 466
    sget-object p2, Lcom/mopub/common/CloseableLayout$ClosePosition;->BOTTOM_CENTER:Lcom/mopub/common/CloseableLayout$ClosePosition;

    goto :goto_0

    .line 468
    :cond_7
    new-instance v0, Lcom/mopub/mraid/MraidCommandException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid close position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseOrientation(Ljava/lang/String;)Lcom/mopub/mraid/MraidOrientation;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 483
    const-string v0, "portrait"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    sget-object v0, Lcom/mopub/mraid/MraidOrientation;->PORTRAIT:Lcom/mopub/mraid/MraidOrientation;

    .line 488
    :goto_0
    return-object v0

    .line 485
    :cond_0
    const-string v0, "landscape"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    sget-object v0, Lcom/mopub/mraid/MraidOrientation;->LANDSCAPE:Lcom/mopub/mraid/MraidOrientation;

    goto :goto_0

    .line 487
    :cond_1
    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 488
    sget-object v0, Lcom/mopub/mraid/MraidOrientation;->NONE:Lcom/mopub/mraid/MraidOrientation;

    goto :goto_0

    .line 490
    :cond_2
    new-instance v0, Lcom/mopub/mraid/MraidCommandException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseSize(Ljava/lang/String;)I
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 475
    const/16 v2, 0xa

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 479
    .local v1, "result":I
    return v1

    .line 476
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/mopub/mraid/MraidCommandException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid numeric parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 4
    .param p1, "encodedText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 529
    if-nez p1, :cond_0

    .line 530
    new-instance v1, Lcom/mopub/mraid/MraidCommandException;

    const-string v2, "Parameter cannot be null"

    invoke-direct {v1, v2}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 533
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Lcom/mopub/mraid/MraidCommandException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URL parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseURI(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;
    .locals 0
    .param p1, "encodedText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "defaultValue"    # Ljava/net/URI;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 521
    if-nez p1, :cond_0

    .line 524
    .end local p2    # "defaultValue":Ljava/net/URI;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/net/URI;
    :cond_0
    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidBridge;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    goto :goto_0
.end method

.method private stringifyRect(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private stringifySize(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method attachView(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V
    .locals 4
    .param p1, "mraidWebView"    # Lcom/mopub/mraid/MraidBridge$MraidWebView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 104
    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 105
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 107
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 108
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    sget-object v2, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v1, v2, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v1, v3}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setScrollContainer(Z)V

    .line 114
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v1, v3}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setVerticalScrollBarEnabled(Z)V

    .line 115
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v1, v3}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 116
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setBackgroundColor(I)V

    .line 118
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iget-object v2, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 120
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v2, Lcom/mopub/mraid/MraidBridge$1;

    invoke-direct {v2, p0}, Lcom/mopub/mraid/MraidBridge$1;-><init>(Lcom/mopub/mraid/MraidBridge;)V

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 144
    new-instance v0, Lcom/mopub/mobileads/ViewGestureDetector;

    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 145
    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iget-object v3, p0, Lcom/mopub/mraid/MraidBridge;->mAdReport:Lcom/mopub/common/AdReport;

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/ViewGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/mopub/common/AdReport;)V

    .line 146
    .local v0, "gestureDetector":Lcom/mopub/mobileads/ViewGestureDetector;
    new-instance v1, Lcom/mopub/mraid/MraidBridge$2;

    invoke-direct {v1, p0}, Lcom/mopub/mraid/MraidBridge$2;-><init>(Lcom/mopub/mraid/MraidBridge;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ViewGestureDetector;->setUserClickListener(Lcom/mopub/mobileads/ViewGestureDetector$UserClickListener;)V

    .line 163
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v2, Lcom/mopub/mraid/MraidBridge$3;

    invoke-direct {v2, p0, v0}, Lcom/mopub/mraid/MraidBridge$3;-><init>(Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mobileads/ViewGestureDetector;)V

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 180
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v2, Lcom/mopub/mraid/MraidBridge$4;

    invoke-direct {v2, p0}, Lcom/mopub/mraid/MraidBridge$4;-><init>(Lcom/mopub/mraid/MraidBridge;)V

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setVisibilityChangedListener(Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;)V

    .line 188
    return-void
.end method

.method detach()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 192
    return-void
.end method

.method getMraidWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    return-object v0
.end method

.method handleShouldOverrideUrl(Ljava/lang/String;)Z
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 294
    :try_start_0
    new-instance v8, Ljava/net/URI;

    invoke-direct {v8, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .local v8, "uri":Ljava/net/URI;
    invoke-virtual {v8}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 303
    .local v7, "scheme":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "host":Ljava/lang/String;
    const-string v11, "mopub"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 306
    const-string v10, "failLoad"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 307
    iget-object v10, p0, Lcom/mopub/mraid/MraidBridge;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    sget-object v11, Lcom/mopub/mraid/PlacementType;->INLINE:Lcom/mopub/mraid/PlacementType;

    if-ne v10, v11, :cond_0

    iget-object v10, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    if-eqz v10, :cond_0

    .line 308
    iget-object v10, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface {v10}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onPageFailedToLoad()V

    .line 351
    .end local v3    # "host":Ljava/lang/String;
    .end local v7    # "scheme":Ljava/lang/String;
    .end local v8    # "uri":Ljava/net/URI;
    :cond_0
    :goto_0
    return v9

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid MRAID URL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 297
    sget-object v10, Lcom/mopub/mraid/MraidJavascriptCommand;->UNSPECIFIED:Lcom/mopub/mraid/MraidJavascriptCommand;

    const-string v11, "Mraid command sent an invalid URL"

    invoke-direct {p0, v10, v11}, Lcom/mopub/mraid/MraidBridge;->fireErrorEvent(Lcom/mopub/mraid/MraidJavascriptCommand;Ljava/lang/String;)V

    goto :goto_0

    .line 314
    .end local v1    # "e":Ljava/net/URISyntaxException;
    .restart local v3    # "host":Ljava/lang/String;
    .restart local v7    # "scheme":Ljava/lang/String;
    .restart local v8    # "uri":Ljava/net/URI;
    :cond_1
    const-string v11, "mraid"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 315
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 316
    .local v6, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "UTF-8"

    invoke-static {v8, v10}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/NameValuePair;

    .line 317
    .local v5, "pair":Lorg/apache/http/NameValuePair;
    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 319
    .end local v5    # "pair":Lorg/apache/http/NameValuePair;
    :cond_2
    invoke-static {v3}, Lcom/mopub/mraid/MraidJavascriptCommand;->fromJavascriptString(Ljava/lang/String;)Lcom/mopub/mraid/MraidJavascriptCommand;

    move-result-object v0

    .line 321
    .local v0, "command":Lcom/mopub/mraid/MraidJavascriptCommand;
    :try_start_1
    invoke-virtual {p0, v0, v6}, Lcom/mopub/mraid/MraidBridge;->runCommand(Lcom/mopub/mraid/MraidJavascriptCommand;Ljava/util/Map;)V
    :try_end_1
    .catch Lcom/mopub/mraid/MraidCommandException; {:try_start_1 .. :try_end_1} :catch_1

    .line 325
    :goto_2
    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidBridge;->fireNativeCommandCompleteEvent(Lcom/mopub/mraid/MraidJavascriptCommand;)V

    goto :goto_0

    .line 322
    :catch_1
    move-exception v2

    .line 323
    .local v2, "exception":Lcom/mopub/mraid/MraidCommandException;
    invoke-virtual {v2}, Lcom/mopub/mraid/MraidCommandException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v0, v10}, Lcom/mopub/mraid/MraidBridge;->fireErrorEvent(Lcom/mopub/mraid/MraidJavascriptCommand;Ljava/lang/String;)V

    goto :goto_2

    .line 332
    .end local v0    # "command":Lcom/mopub/mraid/MraidJavascriptCommand;
    .end local v2    # "exception":Lcom/mopub/mraid/MraidCommandException;
    .end local v6    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-boolean v11, p0, Lcom/mopub/mraid/MraidBridge;->mIsClicked:Z

    if-eqz v11, :cond_5

    .line 333
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 334
    .local v4, "intent":Landroid/content/Intent;
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 336
    const/high16 v11, 0x10000000

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 339
    :try_start_2
    iget-object v11, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v11, :cond_4

    .line 340
    const-string v11, "WebView was detached. Unable to load a URL"

    invoke-static {v11}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 345
    :catch_2
    move-exception v1

    .line 346
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No activity found to handle this URL "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    move v9, v10

    .line 347
    goto/16 :goto_0

    .line 343
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_4
    :try_start_3
    iget-object v11, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v11}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .end local v4    # "intent":Landroid/content/Intent;
    :cond_5
    move v9, v10

    .line 351
    goto/16 :goto_0
.end method

.method injectJavaScript(Ljava/lang/String;)V
    .locals 3
    .param p1, "javascript"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 216
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to inject Javascript into MRAID WebView while was not attached:\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Injecting Javascript into MRAID WebView:\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->v(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method isAttached()Z
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isClicked()Z
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidBridge;->mIsClicked:Z

    return v0
.end method

.method isLoaded()Z
    .locals 1

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidBridge;->mHasLoaded:Z

    return v0
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifyPlacementType(Lcom/mopub/mraid/PlacementType;)V
    .locals 2
    .param p1, "placementType"    # Lcom/mopub/mraid/PlacementType;

    .prologue
    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setPlacementType("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 547
    invoke-virtual {p1}, Lcom/mopub/mraid/PlacementType;->toJavascriptString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidBridge;->injectJavaScript(Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method notifyReady()V
    .locals 1

    .prologue
    .line 590
    const-string v0, "mraidbridge.notifyReadyEvent();"

    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidBridge;->injectJavaScript(Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method public notifyScreenMetrics(Lcom/mopub/mraid/MraidScreenMetrics;)V
    .locals 2
    .param p1, "screenMetrics"    # Lcom/mopub/mraid/MraidScreenMetrics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setScreenSize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 576
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidScreenMetrics;->getScreenRectDips()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidBridge;->stringifySize(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");mraidbridge.setMaxSize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 578
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRectDips()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidBridge;->stringifySize(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");mraidbridge.setCurrentPosition("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 580
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidScreenMetrics;->getCurrentAdRectDips()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidBridge;->stringifyRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");mraidbridge.setDefaultPosition("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 582
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidScreenMetrics;->getDefaultAdRectDips()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidBridge;->stringifyRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidBridge;->injectJavaScript(Ljava/lang/String;)V

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.notifySizeChangeEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 585
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidScreenMetrics;->getCurrentAdRectDips()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidBridge;->stringifySize(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidBridge;->injectJavaScript(Ljava/lang/String;)V

    .line 587
    return-void
.end method

.method notifySupports(ZZZZZ)V
    .locals 2
    .param p1, "sms"    # Z
    .param p2, "telephone"    # Z
    .param p3, "calendar"    # Z
    .param p4, "storePicture"    # Z
    .param p5, "inlineVideo"    # Z

    .prologue
    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setSupports("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidBridge;->injectJavaScript(Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method notifyViewState(Lcom/mopub/mraid/ViewState;)V
    .locals 2
    .param p1, "state"    # Lcom/mopub/mraid/ViewState;

    .prologue
    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 553
    invoke-virtual {p1}, Lcom/mopub/mraid/ViewState;->toJavascriptString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidBridge;->injectJavaScript(Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method notifyViewability(Z)V
    .locals 2
    .param p1, "isViewable"    # Z

    .prologue
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setIsViewable("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidBridge;->injectJavaScript(Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method runCommand(Lcom/mopub/mraid/MraidJavascriptCommand;Ljava/util/Map;)V
    .locals 15
    .param p1, "command"    # Lcom/mopub/mraid/MraidJavascriptCommand;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mraid/MraidJavascriptCommand;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 374
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidJavascriptCommand;->requiresClick(Lcom/mopub/mraid/PlacementType;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mopub/mraid/MraidBridge;->mIsClicked:Z

    if-nez v1, :cond_0

    .line 375
    new-instance v1, Lcom/mopub/mraid/MraidCommandException;

    const-string v12, "Cannot execute this command unless the user clicks"

    invoke-direct {v1, v12}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 378
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    if-nez v1, :cond_1

    .line 379
    new-instance v1, Lcom/mopub/mraid/MraidCommandException;

    const-string v12, "Invalid state to execute this command"

    invoke-direct {v1, v12}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v1, :cond_2

    .line 383
    new-instance v1, Lcom/mopub/mraid/MraidCommandException;

    const-string v12, "The current WebView is being destroyed"

    invoke-direct {v1, v12}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    :cond_2
    sget-object v1, Lcom/mopub/mraid/MraidBridge$7;->$SwitchMap$com$mopub$mraid$MraidJavascriptCommand:[I

    invoke-virtual/range {p1 .. p1}, Lcom/mopub/mraid/MraidJavascriptCommand;->ordinal()I

    move-result v12

    aget v1, v1, v12

    packed-switch v1, :pswitch_data_0

    .line 444
    :goto_0
    return-void

    .line 388
    :pswitch_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface {v1}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onClose()V

    goto :goto_0

    .line 392
    :pswitch_1
    const-string v1, "width"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidBridge;->parseSize(Ljava/lang/String;)I

    move-result v1

    const/4 v12, 0x0

    const v13, 0x186a0

    invoke-direct {p0, v1, v12, v13}, Lcom/mopub/mraid/MraidBridge;->checkRange(III)I

    move-result v2

    .line 393
    .local v2, "width":I
    const-string v1, "height"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidBridge;->parseSize(Ljava/lang/String;)I

    move-result v1

    const/4 v12, 0x0

    const v13, 0x186a0

    invoke-direct {p0, v1, v12, v13}, Lcom/mopub/mraid/MraidBridge;->checkRange(III)I

    move-result v3

    .line 394
    .local v3, "height":I
    const-string v1, "offsetX"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidBridge;->parseSize(Ljava/lang/String;)I

    move-result v1

    const v12, -0x186a0

    const v13, 0x186a0

    invoke-direct {p0, v1, v12, v13}, Lcom/mopub/mraid/MraidBridge;->checkRange(III)I

    move-result v4

    .line 395
    .local v4, "offsetX":I
    const-string v1, "offsetY"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidBridge;->parseSize(Ljava/lang/String;)I

    move-result v1

    const v12, -0x186a0

    const v13, 0x186a0

    invoke-direct {p0, v1, v12, v13}, Lcom/mopub/mraid/MraidBridge;->checkRange(III)I

    move-result v5

    .line 396
    .local v5, "offsetY":I
    const-string v1, "customClosePosition"

    .line 397
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v12, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_RIGHT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    .line 396
    invoke-direct {p0, v1, v12}, Lcom/mopub/mraid/MraidBridge;->parseClosePosition(Ljava/lang/String;Lcom/mopub/common/CloseableLayout$ClosePosition;)Lcom/mopub/common/CloseableLayout$ClosePosition;

    move-result-object v6

    .line 398
    .local v6, "closePosition":Lcom/mopub/common/CloseableLayout$ClosePosition;
    const-string v1, "allowOffscreen"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v12, 0x1

    invoke-direct {p0, v1, v12}, Lcom/mopub/mraid/MraidBridge;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 399
    .local v7, "allowOffscreen":Z
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface/range {v1 .. v7}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onResize(IIIILcom/mopub/common/CloseableLayout$ClosePosition;Z)V

    goto/16 :goto_0

    .line 403
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "offsetX":I
    .end local v5    # "offsetY":I
    .end local v6    # "closePosition":Lcom/mopub/common/CloseableLayout$ClosePosition;
    .end local v7    # "allowOffscreen":Z
    :pswitch_2
    const-string v1, "url"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {p0, v1, v12}, Lcom/mopub/mraid/MraidBridge;->parseURI(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v11

    .line 404
    .local v11, "uri":Ljava/net/URI;
    const-string v1, "shouldUseCustomClose"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {p0, v1, v12}, Lcom/mopub/mraid/MraidBridge;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 406
    .local v10, "shouldUseCustomClose":Z
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface {v1, v11, v10}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onExpand(Ljava/net/URI;Z)V

    goto/16 :goto_0

    .line 409
    .end local v10    # "shouldUseCustomClose":Z
    .end local v11    # "uri":Ljava/net/URI;
    :pswitch_3
    const-string v1, "shouldUseCustomClose"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {p0, v1, v12}, Lcom/mopub/mraid/MraidBridge;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 410
    .restart local v10    # "shouldUseCustomClose":Z
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface {v1, v10}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onUseCustomClose(Z)V

    goto/16 :goto_0

    .line 413
    .end local v10    # "shouldUseCustomClose":Z
    :pswitch_4
    const-string v1, "url"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidBridge;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v11

    .line 414
    .restart local v11    # "uri":Ljava/net/URI;
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface {v1, v11}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onOpen(Ljava/net/URI;)V

    goto/16 :goto_0

    .line 417
    .end local v11    # "uri":Ljava/net/URI;
    :pswitch_5
    const-string v1, "allowOrientationChange"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidBridge;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 418
    .local v8, "allowOrientationChange":Z
    const-string v1, "forceOrientation"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidBridge;->parseOrientation(Ljava/lang/String;)Lcom/mopub/mraid/MraidOrientation;

    move-result-object v9

    .line 420
    .local v9, "forceOrientation":Lcom/mopub/mraid/MraidOrientation;
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface {v1, v8, v9}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onSetOrientationProperties(ZLcom/mopub/mraid/MraidOrientation;)V

    goto/16 :goto_0

    .line 424
    .end local v8    # "allowOrientationChange":Z
    .end local v9    # "forceOrientation":Lcom/mopub/mraid/MraidOrientation;
    :pswitch_6
    const-string v1, "uri"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidBridge;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v11

    .line 425
    .restart local v11    # "uri":Ljava/net/URI;
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface {v1, v11}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onPlayVideo(Ljava/net/URI;)V

    goto/16 :goto_0

    .line 428
    .end local v11    # "uri":Ljava/net/URI;
    :pswitch_7
    const-string v1, "uri"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidBridge;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v11

    .line 429
    .restart local v11    # "uri":Ljava/net/URI;
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

    iget-object v12, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v12}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/mopub/mraid/MraidBridge$6;

    invoke-direct/range {v14 .. v16}, Lcom/mopub/mraid/MraidBridge$6;-><init>(Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidJavascriptCommand;)V

    invoke-virtual {v1, v12, v13, v14}, Lcom/mopub/mraid/MraidNativeCommandHandler;->storePicture(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/MraidNativeCommandHandler$MraidCommandFailureListener;)V

    goto/16 :goto_0

    .line 439
    .end local v11    # "uri":Ljava/net/URI;
    :pswitch_8
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

    iget-object v12, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v12}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v1, v12, v0}, Lcom/mopub/mraid/MraidNativeCommandHandler;->createCalendarEvent(Landroid/content/Context;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 442
    :pswitch_9
    new-instance v1, Lcom/mopub/mraid/MraidCommandException;

    const-string v12, "Unspecified MRAID Javascript command"

    invoke-direct {v1, v12}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method setClicked(Z)V
    .locals 0
    .param p1, "clicked"    # Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 616
    iput-boolean p1, p0, Lcom/mopub/mraid/MraidBridge;->mIsClicked:Z

    .line 617
    return-void
.end method

.method public setContentHtml(Ljava/lang/String;)V
    .locals 6
    .param p1, "htmlData"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v0, :cond_0

    .line 196
    const-string v0, "MRAID bridge called setContentHtml before WebView was attached"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 203
    :goto_0
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mraid/MraidBridge;->mHasLoaded:Z

    .line 201
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mopub/network/Networking;->getBaseUrlScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ads.mopub.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContentUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v0, :cond_0

    .line 207
    const-string v0, "MRAID bridge called setContentHtml while WebView was not attached"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mraid/MraidBridge;->mHasLoaded:Z

    .line 212
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setMraidBridgeListener(Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    .line 101
    return-void
.end method
