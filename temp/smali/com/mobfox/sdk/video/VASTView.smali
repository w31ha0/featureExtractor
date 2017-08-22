.class public Lcom/mobfox/sdk/video/VASTView;
.super Landroid/widget/RelativeLayout;
.source "VASTView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobfox/sdk/video/VASTView$Listener;
    }
.end annotation


# static fields
.field public static final CLOSE_BUTTON:Ljava/lang/String; = "http://sdk.starbolt.io/dist/images/button_close_55x55.png"

.field public static final MUTE_BUTTON:Ljava/lang/String; = "http://sdk.starbolt.io/dist/images/button_mute_75x75.png"

.field public static final PLAY_BUTTON:Ljava/lang/String; = "http://sdk.starbolt.io/dist/images/button_play_100x100.png"

.field static final SCALING_CONSTANT:D = 0.5

.field public static final UNMUTE_BUTTON:Ljava/lang/String; = "http://sdk.starbolt.io/dist/images/button_unmute_75x75.png"


# instance fields
.field autoplay:Z

.field clickUrl:Ljava/lang/String;

.field close:Landroid/widget/Button;

.field context:Landroid/content/Context;

.field dmute:Landroid/graphics/drawable/Drawable;

.field downloaded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dunmute:Landroid/graphics/drawable/Drawable;

.field finished:Z

.field mp:Landroid/media/MediaPlayer;

.field mute:Landroid/widget/Button;

.field onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field otl:Landroid/view/View$OnTouchListener;

.field paused:Z

.field poster:Landroid/widget/ImageView;

.field self:Lcom/mobfox/sdk/video/VASTView;

.field skip:Z

.field start_muted:Z

.field stopPosition:I

.field tvTimer:Landroid/widget/TextView;

.field video:Landroid/widget/VideoView;

.field videoLocalPath:Ljava/lang/String;

.field videoRemotePath:Ljava/lang/String;

.field videoStarted:Z

.field wv:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobfox/sdk/video/VASTView;->downloaded:Ljava/util/List;

    .line 65
    iput-boolean v1, p0, Lcom/mobfox/sdk/video/VASTView;->videoStarted:Z

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobfox/sdk/video/VASTView;->autoplay:Z

    .line 75
    iput-boolean v1, p0, Lcom/mobfox/sdk/video/VASTView;->start_muted:Z

    .line 80
    iput-boolean v1, p0, Lcom/mobfox/sdk/video/VASTView;->finished:Z

    .line 83
    iput-boolean v1, p0, Lcom/mobfox/sdk/video/VASTView;->paused:Z

    .line 197
    return-void
.end method

.method public static convertDpToPixel(FLandroid/content/Context;)F
    .locals 5
    .param p0, "dp"    # F
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 568
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 569
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 570
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    mul-float v1, p0, v3

    .line 571
    .local v1, "px":F
    return v1
.end method

.method private setBG(Landroid/content/Context;Ljava/lang/String;Lcom/mobfox/sdk/video/VASTView$Listener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/mobfox/sdk/video/VASTView$Listener;

    .prologue
    .line 359
    new-instance v0, Lcom/mobfox/sdk/networking/MobFoxRequest;

    invoke-direct {v0, p1, p2}, Lcom/mobfox/sdk/networking/MobFoxRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/mobfox/sdk/video/VASTView$7;

    invoke-direct {v1, p0, p3, p2}, Lcom/mobfox/sdk/video/VASTView$7;-><init>(Lcom/mobfox/sdk/video/VASTView;Lcom/mobfox/sdk/video/VASTView$Listener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/networking/MobFoxRequest;->getDrawable(Lcom/mobfox/sdk/networking/AsyncCallbackDrawable;)V

    .line 370
    return-void
.end method

.method private setVolume(I)V
    .locals 10
    .param p1, "amount"    # I

    .prologue
    .line 522
    const/16 v1, 0x64

    .line 523
    .local v1, "max":I
    rsub-int/lit8 v6, p1, 0x64

    if-lez v6, :cond_0

    rsub-int/lit8 v6, p1, 0x64

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    .line 524
    .local v2, "numerator":D
    :goto_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double v8, v2, v8

    sub-double/2addr v6, v8

    double-to-float v5, v6

    .line 526
    .local v5, "volume":F
    :try_start_0
    iget-object v6, p0, Lcom/mobfox/sdk/video/VASTView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v6, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 532
    :goto_1
    return-void

    .line 523
    .end local v2    # "numerator":D
    .end local v5    # "volume":F
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 527
    .restart local v2    # "numerator":D
    .restart local v5    # "volume":F
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "MobFoxBanner"

    const-string v7, "set volume exception"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 529
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 530
    .local v4, "t":Ljava/lang/Throwable;
    const-string v6, "MobFoxBanner"

    const-string v7, "set volume exception"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected addButtons(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Lorg/json/JSONObject;

    .prologue
    .line 326
    iget-object v4, p0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {p0, p1}, Lcom/mobfox/sdk/video/VASTView;->closeBtn(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, v4, Lcom/mobfox/sdk/video/VASTView;->close:Landroid/widget/Button;

    .line 327
    iget-object v4, p0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {p0, p1}, Lcom/mobfox/sdk/video/VASTView;->muteBtn(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, v4, Lcom/mobfox/sdk/video/VASTView;->mute:Landroid/widget/Button;

    .line 329
    iget-object v4, p0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    iget-object v5, p0, Lcom/mobfox/sdk/video/VASTView;->mute:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Lcom/mobfox/sdk/video/VASTView;->addView(Landroid/view/View;)V

    .line 331
    invoke-virtual {p0, p1}, Lcom/mobfox/sdk/video/VASTView;->rlTimer(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/mobfox/sdk/video/VASTView;->tvTimer:Landroid/widget/TextView;

    .line 332
    iget-object v4, p0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    iget-object v5, p0, Lcom/mobfox/sdk/video/VASTView;->tvTimer:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Lcom/mobfox/sdk/video/VASTView;->addView(Landroid/view/View;)V

    .line 335
    :try_start_0
    const-string v4, "skip"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 336
    .local v2, "skip":Z
    if-eqz v2, :cond_0

    .line 337
    iget-object v4, p0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    iget-object v5, p0, Lcom/mobfox/sdk/video/VASTView;->close:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Lcom/mobfox/sdk/video/VASTView;->addView(Landroid/view/View;)V

    .line 339
    :cond_0
    const-string v4, "start_muted"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 340
    .local v3, "start_muted":Z
    if-eqz v3, :cond_1

    .line 341
    iget-object v4, p0, Lcom/mobfox/sdk/video/VASTView;->mute:Landroid/widget/Button;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setActivated(Z)V

    .line 342
    iget-object v4, p0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    const-string v5, "videoMute"

    invoke-virtual {v4, v5}, Lcom/mobfox/sdk/video/VASTView;->notifyJS(Ljava/lang/String;)V

    .line 343
    iget-object v4, p0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/mobfox/sdk/video/VASTView;->start_muted:Z

    .line 345
    :cond_1
    const-string v4, "autoplay"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 346
    .local v0, "autoplay":Z
    if-nez v0, :cond_2

    .line 347
    iget-object v4, p0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/mobfox/sdk/video/VASTView;->autoplay:Z

    .line 348
    invoke-virtual {p0, p1}, Lcom/mobfox/sdk/video/VASTView;->playBtn(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v1

    .line 349
    .local v1, "play":Landroid/widget/Button;
    iget-object v4, p0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {v4, v1}, Lcom/mobfox/sdk/video/VASTView;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .end local v0    # "autoplay":Z
    .end local v1    # "play":Landroid/widget/Button;
    .end local v2    # "skip":Z
    .end local v3    # "start_muted":Z
    :cond_2
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v4

    goto :goto_0

    .line 351
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method protected closeBtn(Landroid/content/Context;)Landroid/widget/Button;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v4, 0x42960000    # 75.0f

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 403
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 405
    .local v0, "close":Landroid/widget/Button;
    const-string v2, "http://sdk.starbolt.io/dist/images/button_close_55x55.png"

    new-instance v3, Lcom/mobfox/sdk/video/VASTView$10;

    invoke-direct {v3, p0, v0}, Lcom/mobfox/sdk/video/VASTView$10;-><init>(Lcom/mobfox/sdk/video/VASTView;Landroid/widget/Button;)V

    invoke-direct {p0, p1, v2, v3}, Lcom/mobfox/sdk/video/VASTView;->setBG(Landroid/content/Context;Ljava/lang/String;Lcom/mobfox/sdk/video/VASTView$Listener;)V

    .line 414
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 415
    invoke-virtual {p0}, Lcom/mobfox/sdk/video/VASTView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/mobfox/sdk/video/VASTView;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    .line 416
    invoke-virtual {p0}, Lcom/mobfox/sdk/video/VASTView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mobfox/sdk/video/VASTView;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v3

    float-to-double v4, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 418
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 419
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 420
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    new-instance v2, Lcom/mobfox/sdk/video/VASTView$11;

    invoke-direct {v2, p0}, Lcom/mobfox/sdk/video/VASTView$11;-><init>(Lcom/mobfox/sdk/video/VASTView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    return-object v0
.end method

.method public getMp()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/webkit/WebView;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "webview"    # Landroid/webkit/WebView;
    .param p3, "options"    # Lorg/json/JSONObject;
    .param p4, "clickUrl"    # Ljava/lang/String;
    .param p5, "videoLocalPath"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p0, p0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    .line 116
    iput-object p1, p0, Lcom/mobfox/sdk/video/VASTView;->context:Landroid/content/Context;

    .line 117
    iput-object p5, p0, Lcom/mobfox/sdk/video/VASTView;->videoLocalPath:Ljava/lang/String;

    .line 119
    new-instance v1, Landroid/widget/VideoView;

    invoke-direct {v1, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mobfox/sdk/video/VASTView;->video:Landroid/widget/VideoView;

    .line 120
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {v2}, Lcom/mobfox/sdk/video/VASTView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mobfox/sdk/video/VASTView;->poster:Landroid/widget/ImageView;

    .line 121
    iput-object p2, p0, Lcom/mobfox/sdk/video/VASTView;->wv:Landroid/webkit/WebView;

    .line 123
    iput-object p4, p0, Lcom/mobfox/sdk/video/VASTView;->clickUrl:Ljava/lang/String;

    .line 125
    :try_start_0
    const-string v1, "skip"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mobfox/sdk/video/VASTView;->skip:Z

    .line 126
    const-string v1, "autoplay"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mobfox/sdk/video/VASTView;->autoplay:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    new-instance v1, Lcom/mobfox/sdk/video/VASTView$2;

    invoke-direct {v1, p0}, Lcom/mobfox/sdk/video/VASTView$2;-><init>(Lcom/mobfox/sdk/video/VASTView;)V

    iput-object v1, p0, Lcom/mobfox/sdk/video/VASTView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 145
    iget-object v1, p0, Lcom/mobfox/sdk/video/VASTView;->video:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/mobfox/sdk/video/VASTView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 148
    iget-object v1, p0, Lcom/mobfox/sdk/video/VASTView;->video:Landroid/widget/VideoView;

    new-instance v2, Lcom/mobfox/sdk/video/VASTView$3;

    invoke-direct {v2, p0}, Lcom/mobfox/sdk/video/VASTView$3;-><init>(Lcom/mobfox/sdk/video/VASTView;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 161
    new-instance v1, Lcom/mobfox/sdk/video/VASTView$4;

    invoke-direct {v1, p0, p4}, Lcom/mobfox/sdk/video/VASTView$4;-><init>(Lcom/mobfox/sdk/video/VASTView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mobfox/sdk/video/VASTView;->otl:Landroid/view/View$OnTouchListener;

    .line 174
    iget-object v1, p0, Lcom/mobfox/sdk/video/VASTView;->video:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/mobfox/sdk/video/VASTView;->otl:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 177
    iget-object v1, p0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {v1}, Lcom/mobfox/sdk/video/VASTView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 178
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/mobfox/sdk/video/VASTView$5;

    invoke-direct {v1, p0, p1, p3}, Lcom/mobfox/sdk/video/VASTView$5;-><init>(Lcom/mobfox/sdk/video/VASTView;Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 193
    return-void

    .line 127
    .end local v0    # "treeObserver":Landroid/view/ViewTreeObserver;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isVideoStarted()Z
    .locals 1

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/mobfox/sdk/video/VASTView;->videoStarted:Z

    return v0
.end method

.method protected mute()V
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mobfox/sdk/video/VASTView;->setVolume(I)V

    .line 515
    return-void
.end method

.method protected muteBtn(Landroid/content/Context;)Landroid/widget/Button;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v8, 0x42960000    # 75.0f

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 432
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 434
    .local v1, "mute":Landroid/widget/Button;
    new-instance v0, Lcom/mobfox/sdk/video/VASTTasks;

    new-instance v3, Lcom/mobfox/sdk/video/VASTView$12;

    invoke-direct {v3, p0, p1, v1}, Lcom/mobfox/sdk/video/VASTView$12;-><init>(Lcom/mobfox/sdk/video/VASTView;Landroid/content/Context;Landroid/widget/Button;)V

    invoke-direct {v0, v3}, Lcom/mobfox/sdk/video/VASTTasks;-><init>(Lcom/mobfox/sdk/video/VASTTasks$DoneCallback;)V

    .line 450
    .local v0, "drawables":Lcom/mobfox/sdk/video/VASTTasks;
    const-string v3, "http://sdk.starbolt.io/dist/images/button_mute_75x75.png"

    new-instance v4, Lcom/mobfox/sdk/video/VASTView$13;

    invoke-direct {v4, p0, v0}, Lcom/mobfox/sdk/video/VASTView$13;-><init>(Lcom/mobfox/sdk/video/VASTView;Lcom/mobfox/sdk/video/VASTTasks;)V

    invoke-direct {p0, p1, v3, v4}, Lcom/mobfox/sdk/video/VASTView;->setBG(Landroid/content/Context;Ljava/lang/String;Lcom/mobfox/sdk/video/VASTView$Listener;)V

    .line 460
    const-string v3, "http://sdk.starbolt.io/dist/images/button_unmute_75x75.png"

    new-instance v4, Lcom/mobfox/sdk/video/VASTView$14;

    invoke-direct {v4, p0, v0}, Lcom/mobfox/sdk/video/VASTView$14;-><init>(Lcom/mobfox/sdk/video/VASTView;Lcom/mobfox/sdk/video/VASTTasks;)V

    invoke-direct {p0, p1, v3, v4}, Lcom/mobfox/sdk/video/VASTView;->setBG(Landroid/content/Context;Ljava/lang/String;Lcom/mobfox/sdk/video/VASTView$Listener;)V

    .line 471
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 472
    invoke-virtual {p0}, Lcom/mobfox/sdk/video/VASTView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/mobfox/sdk/video/VASTView;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v3

    float-to-double v4, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 473
    invoke-virtual {p0}, Lcom/mobfox/sdk/video/VASTView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/mobfox/sdk/video/VASTView;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 475
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 476
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 477
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    new-instance v3, Lcom/mobfox/sdk/video/VASTView$15;

    invoke-direct {v3, p0, v1}, Lcom/mobfox/sdk/video/VASTView$15;-><init>(Lcom/mobfox/sdk/video/VASTView;Landroid/widget/Button;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    return-object v1
.end method

.method public notifyDownloaded(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 575
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView;->downloaded:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    return-void
.end method

.method notifyJS(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mobfox/sdk/video/VASTView;->notifyJS(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 99
    return-void
.end method

.method notifyJS(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 102
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mobfox/sdk/video/VASTView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mobfox/sdk/video/VASTView$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/mobfox/sdk/video/VASTView$1;-><init>(Lcom/mobfox/sdk/video/VASTView;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView;->video:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mobfox/sdk/video/VASTView;->finished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mobfox/sdk/video/VASTView;->paused:Z

    if-eqz v0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobfox/sdk/video/VASTView;->paused:Z

    .line 298
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/mobfox/sdk/video/VASTView;->stopPosition:I

    .line 299
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 301
    const-string v0, "hyper console"

    const-string v1, "video paused"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView;->wv:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    const-string v1, "videoPause"

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/video/VASTView;->notifyJS(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView;->video:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mobfox/sdk/video/VASTView;->finished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mobfox/sdk/video/VASTView;->paused:Z

    if-nez v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobfox/sdk/video/VASTView;->paused:Z

    .line 313
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    iget-object v0, v0, Lcom/mobfox/sdk/video/VASTView;->mute:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mobfox/sdk/video/VASTView;->mute()V

    .line 316
    :goto_1
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 317
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView;->video:Landroid/widget/VideoView;

    iget v1, p0, Lcom/mobfox/sdk/video/VASTView;->stopPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 318
    const-string v0, "hyper console"

    const-string v1, "video resumed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobfox/sdk/video/VASTView;->videoStarted:Z

    .line 320
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView;->wv:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    const-string v1, "videoResume"

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/video/VASTView;->notifyJS(Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_2
    invoke-virtual {p0}, Lcom/mobfox/sdk/video/VASTView;->unmute()V

    goto :goto_1
.end method

.method protected playBtn(Landroid/content/Context;)Landroid/widget/Button;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 373
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 375
    .local v1, "play":Landroid/widget/Button;
    const-string v2, "http://sdk.starbolt.io/dist/images/button_play_100x100.png"

    new-instance v3, Lcom/mobfox/sdk/video/VASTView$8;

    invoke-direct {v3, p0, v1}, Lcom/mobfox/sdk/video/VASTView$8;-><init>(Lcom/mobfox/sdk/video/VASTView;Landroid/widget/Button;)V

    invoke-direct {p0, p1, v2, v3}, Lcom/mobfox/sdk/video/VASTView;->setBG(Landroid/content/Context;Ljava/lang/String;Lcom/mobfox/sdk/video/VASTView$Listener;)V

    .line 384
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 385
    invoke-virtual {p0}, Lcom/mobfox/sdk/video/VASTView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/mobfox/sdk/video/VASTView;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    .line 386
    invoke-virtual {p0}, Lcom/mobfox/sdk/video/VASTView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mobfox/sdk/video/VASTView;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v3

    float-to-double v4, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 389
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 390
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 391
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    new-instance v2, Lcom/mobfox/sdk/video/VASTView$9;

    invoke-direct {v2, p0, v1}, Lcom/mobfox/sdk/video/VASTView$9;-><init>(Lcom/mobfox/sdk/video/VASTView;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    return-object v1
.end method

.method public playCreative(Ljava/lang/String;)V
    .locals 9
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string v6, "hyper console"

    const-string v7, "play creative called!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, "creative":Lorg/json/JSONObject;
    const-string v6, "url"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mobfox/sdk/video/VASTView;->videoRemotePath:Ljava/lang/String;

    .line 210
    const-string v6, "type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "type":Ljava/lang/String;
    const-string v6, "poster"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 217
    .local v3, "posterURL":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/mobfox/sdk/video/VASTView;->videoRemotePath:Ljava/lang/String;

    if-eqz v6, :cond_0

    if-nez v5, :cond_1

    .line 271
    .end local v1    # "creative":Lorg/json/JSONObject;
    .end local v3    # "posterURL":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v2

    .line 214
    .local v2, "je":Lorg/json/JSONException;
    goto :goto_0

    .line 219
    .end local v2    # "je":Lorg/json/JSONException;
    .restart local v1    # "creative":Lorg/json/JSONObject;
    .restart local v3    # "posterURL":Ljava/lang/String;
    .restart local v5    # "type":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/mobfox/sdk/video/VASTView;->videoLocalPath:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/mobfox/sdk/video/VASTView;->videoLocalPath:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 220
    :cond_2
    iget-object v6, p0, Lcom/mobfox/sdk/video/VASTView;->video:Landroid/widget/VideoView;

    iget-object v7, p0, Lcom/mobfox/sdk/video/VASTView;->videoRemotePath:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 221
    const-string v6, "MobFoxInterstitial"

    const-string v7, "remote"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_1
    iget-object v6, p0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    const-string v7, "videoLoadstart"

    invoke-virtual {v6, v7}, Lcom/mobfox/sdk/video/VASTView;->notifyJS(Ljava/lang/String;)V

    .line 228
    iget-boolean v6, p0, Lcom/mobfox/sdk/video/VASTView;->autoplay:Z

    if-eqz v6, :cond_3

    .line 229
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/mobfox/sdk/video/VASTView;->videoStarted:Z

    .line 233
    :cond_3
    if-eqz v3, :cond_5

    const-string v6, "data:image/png;base64"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "audio/mp3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 235
    const-string v6, "data:image/png;base64,"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-static {v3}, Lcom/mobfox/sdk/utils/Utils;->decodeBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 237
    .local v0, "b":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/mobfox/sdk/video/VASTView;->poster:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 238
    iget-object v6, p0, Lcom/mobfox/sdk/video/VASTView;->poster:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 240
    iget-object v6, p0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    iget-object v7, p0, Lcom/mobfox/sdk/video/VASTView;->poster:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/mobfox/sdk/video/VASTView;->addView(Landroid/view/View;I)V

    .line 241
    invoke-virtual {p0}, Lcom/mobfox/sdk/video/VASTView;->showPoster()V

    goto :goto_0

    .line 223
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v6, p0, Lcom/mobfox/sdk/video/VASTView;->video:Landroid/widget/VideoView;

    iget-object v7, p0, Lcom/mobfox/sdk/video/VASTView;->videoLocalPath:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 224
    const-string v6, "MobFoxInterstitial"

    const-string v7, "local"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 246
    :cond_5
    if-eqz v3, :cond_0

    .line 247
    new-instance v4, Lcom/mobfox/sdk/networking/MobFoxRequest;

    iget-object v6, p0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {v6}, Lcom/mobfox/sdk/video/VASTView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Lcom/mobfox/sdk/networking/MobFoxRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 248
    .local v4, "req":Lcom/mobfox/sdk/networking/MobFoxRequest;
    new-instance v6, Lcom/mobfox/sdk/video/VASTView$6;

    invoke-direct {v6, p0, v5}, Lcom/mobfox/sdk/video/VASTView$6;-><init>(Lcom/mobfox/sdk/video/VASTView;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/mobfox/sdk/networking/MobFoxRequest;->getBitmap(Lcom/mobfox/sdk/networking/AsyncCallbackBitmap;)V

    goto/16 :goto_0
.end method

.method protected rlTimer(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v4, 0x42960000    # 75.0f

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 497
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 498
    .local v1, "timer":Landroid/widget/TextView;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 499
    invoke-virtual {p0}, Lcom/mobfox/sdk/video/VASTView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/mobfox/sdk/video/VASTView;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    .line 500
    invoke-virtual {p0}, Lcom/mobfox/sdk/video/VASTView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mobfox/sdk/video/VASTView;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v3

    float-to-double v4, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 503
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 504
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 505
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 508
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 510
    return-object v1
.end method

.method protected showPoster()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView;->poster:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView;->video:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 560
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView;->video:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setAlpha(F)V

    .line 562
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView;->poster:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mobfox/sdk/video/VASTView;->otl:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 563
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView;->poster:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 565
    :cond_0
    return-void
.end method

.method protected startVideo()V
    .locals 2

    .prologue
    .line 535
    const-string v0, "MobFoxBanner"

    const-string v1, "video started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 537
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    const-string v1, "videoPlaying"

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/video/VASTView;->notifyJS(Ljava/lang/String;)V

    .line 538
    iget-boolean v0, p0, Lcom/mobfox/sdk/video/VASTView;->start_muted:Z

    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/mobfox/sdk/video/VASTView;->mute()V

    .line 541
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobfox/sdk/video/VASTView;->videoStarted:Z

    .line 542
    return-void
.end method

.method protected stopVideo()V
    .locals 2

    .prologue
    .line 545
    const-string v0, "MobFoxBanner"

    const-string v1, "stop video"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 547
    return-void
.end method

.method protected unmute()V
    .locals 1

    .prologue
    .line 518
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/mobfox/sdk/video/VASTView;->setVolume(I)V

    .line 519
    return-void
.end method

.method videoProgressRequest()V
    .locals 10

    .prologue
    .line 274
    iget-object v5, p0, Lcom/mobfox/sdk/video/VASTView;->video:Landroid/widget/VideoView;

    invoke-virtual {v5}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    .line 275
    .local v2, "pos":I
    iget-object v5, p0, Lcom/mobfox/sdk/video/VASTView;->video:Landroid/widget/VideoView;

    invoke-virtual {v5}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 276
    .local v0, "duration":I
    if-lez v2, :cond_0

    .line 277
    sub-int v4, v0, v2

    .line 278
    .local v4, "timer":I
    int-to-double v6, v4

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 279
    .local v3, "seconds":I
    const-string v5, "hyper console"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v5, p0, Lcom/mobfox/sdk/video/VASTView;->tvTimer:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 281
    iget-object v5, p0, Lcom/mobfox/sdk/video/VASTView;->tvTimer:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    .end local v3    # "seconds":I
    .end local v4    # "timer":I
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 286
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "position"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 287
    const-string v5, "duration"

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    const-string v5, "videoProgress"

    invoke-virtual {p0, v5, v1}, Lcom/mobfox/sdk/video/VASTView;->notifyJS(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 290
    return-void

    .line 288
    :catch_0
    move-exception v5

    goto :goto_0
.end method
