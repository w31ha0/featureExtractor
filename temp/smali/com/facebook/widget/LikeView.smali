.class public Lcom/facebook/widget/LikeView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static synthetic $SWITCH_TABLE$com$facebook$widget$LikeView$AuxiliaryViewPosition:[I = null

.field private static final NO_FOREGROUND_COLOR:I = -0x1


# instance fields
.field private auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private containerView:Landroid/widget/LinearLayout;

.field private creationCallback:Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;

.field private edgePadding:I

.field private foregroundColor:I

.field private horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

.field private internalPadding:I

.field private likeActionController:Lcom/facebook/internal/LikeActionController;

.field private likeBoxCountView:Lcom/facebook/internal/LikeBoxCountView;

.field private likeButton:Lcom/facebook/internal/LikeButton;

.field private likeViewStyle:Lcom/facebook/widget/LikeView$Style;

.field private objectId:Ljava/lang/String;

.field private onErrorListener:Lcom/facebook/widget/LikeView$OnErrorListener;

.field private socialSentenceView:Landroid/widget/TextView;


# direct methods
.method static synthetic $SWITCH_TABLE$com$facebook$widget$LikeView$AuxiliaryViewPosition()[I
    .locals 3

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/widget/LikeView;->$SWITCH_TABLE$com$facebook$widget$LikeView$AuxiliaryViewPosition:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->values()[Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->BOTTOM:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v1}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->INLINE:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v1}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->TOP:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v1}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/facebook/widget/LikeView;->$SWITCH_TABLE$com$facebook$widget$LikeView$AuxiliaryViewPosition:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 251
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 219
    sget-object v0, Lcom/facebook/widget/LikeView$Style;->DEFAULT:Lcom/facebook/widget/LikeView$Style;

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/LikeView$Style;

    .line 220
    sget-object v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->DEFAULT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    .line 221
    sget-object v0, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->DEFAULT:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    .line 222
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/widget/LikeView;->foregroundColor:I

    .line 252
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView;->initialize(Landroid/content/Context;)V

    .line 253
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 219
    sget-object v0, Lcom/facebook/widget/LikeView$Style;->DEFAULT:Lcom/facebook/widget/LikeView$Style;

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/LikeView$Style;

    .line 220
    sget-object v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->DEFAULT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    .line 221
    sget-object v0, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->DEFAULT:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    .line 222
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/widget/LikeView;->foregroundColor:I

    .line 263
    invoke-direct {p0, p2}, Lcom/facebook/widget/LikeView;->parseAttributes(Landroid/util/AttributeSet;)V

    .line 264
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView;->initialize(Landroid/content/Context;)V

    .line 265
    return-void
.end method

.method static synthetic access$0(Lcom/facebook/widget/LikeView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/widget/LikeView;)V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateLikeStateAndLayout()V

    return-void
.end method

.method static synthetic access$2(Lcom/facebook/widget/LikeView;)Lcom/facebook/widget/LikeView$OnErrorListener;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->onErrorListener:Lcom/facebook/widget/LikeView$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/facebook/widget/LikeView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView;->setObjectIdForced(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/facebook/widget/LikeView;Lcom/facebook/internal/LikeActionController;)V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView;->associateWithLikeActionController(Lcom/facebook/internal/LikeActionController;)V

    return-void
.end method

.method static synthetic access$5(Lcom/facebook/widget/LikeView;Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/facebook/widget/LikeView;->creationCallback:Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;

    return-void
.end method

.method static synthetic access$6(Lcom/facebook/widget/LikeView;)V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->toggleLike()V

    return-void
.end method

.method private associateWithLikeActionController(Lcom/facebook/internal/LikeActionController;)V
    .locals 3

    .prologue
    .line 510
    iput-object p1, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    .line 512
    new-instance v0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;-><init>(Lcom/facebook/widget/LikeView;Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;)V

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 513
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 516
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 517
    const-string v2, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 518
    const-string v2, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 519
    const-string v2, "com.facebook.sdk.LikeActionController.DID_RESET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 521
    iget-object v2, p0, Lcom/facebook/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 522
    return-void
.end method

.method private getAnalyticsParameters()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 486
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 487
    const-string v1, "style"

    iget-object v2, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/LikeView$Style;

    invoke-virtual {v2}, Lcom/facebook/widget/LikeView$Style;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v1, "auxiliary_position"

    iget-object v2, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v2}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v1, "horizontal_alignment"

    iget-object v2, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    invoke-virtual {v2}, Lcom/facebook/widget/LikeView$HorizontalAlignment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v1, "object_id"

    iget-object v2, p0, Lcom/facebook/widget/LikeView;->objectId:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    return-object v0
.end method

.method public static handleOnActivityResult(Landroid/content/Context;IILandroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 242
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/internal/LikeActionController;->handleOnActivityResult(Landroid/content/Context;IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 396
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$dimen;->com_facebook_likeview_edge_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    .line 397
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$dimen;->com_facebook_likeview_internal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/widget/LikeView;->internalPadding:I

    .line 398
    iget v0, p0, Lcom/facebook/widget/LikeView;->foregroundColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$color;->com_facebook_likeview_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/widget/LikeView;->foregroundColor:I

    .line 402
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LikeView;->setBackgroundColor(I)V

    .line 404
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    .line 405
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 408
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView;->initializeLikeButton(Landroid/content/Context;)V

    .line 411
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView;->initializeSocialSentenceView(Landroid/content/Context;)V

    .line 412
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView;->initializeLikeCountView(Landroid/content/Context;)V

    .line 414
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/internal/LikeButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 415
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 416
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/internal/LikeBoxCountView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 418
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LikeView;->addView(Landroid/view/View;)V

    .line 420
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->objectId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/widget/LikeView;->setObjectIdForced(Ljava/lang/String;)V

    .line 421
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateLikeStateAndLayout()V

    .line 422
    return-void
.end method

.method private initializeLikeButton(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 425
    new-instance v1, Lcom/facebook/internal/LikeButton;

    .line 427
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    invoke-virtual {v0}, Lcom/facebook/internal/LikeActionController;->isObjectLiked()Z

    move-result v0

    :goto_0
    invoke-direct {v1, p1, v0}, Lcom/facebook/internal/LikeButton;-><init>(Landroid/content/Context;Z)V

    .line 425
    iput-object v1, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/internal/LikeButton;

    .line 428
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/internal/LikeButton;

    new-instance v1, Lcom/facebook/widget/LikeView$1;

    invoke-direct {v1, p0}, Lcom/facebook/widget/LikeView$1;-><init>(Lcom/facebook/widget/LikeView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/internal/LikeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 439
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/internal/LikeButton;

    invoke-virtual {v1, v0}, Lcom/facebook/internal/LikeButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    return-void

    .line 427
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeLikeCountView(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 458
    new-instance v0, Lcom/facebook/internal/LikeBoxCountView;

    invoke-direct {v0, p1}, Lcom/facebook/internal/LikeBoxCountView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/internal/LikeBoxCountView;

    .line 460
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 463
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/internal/LikeBoxCountView;

    invoke-virtual {v1, v0}, Lcom/facebook/internal/LikeBoxCountView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    return-void
.end method

.method private initializeSocialSentenceView(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 443
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    .line 444
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    .line 445
    const/4 v1, 0x0

    .line 446
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/android/R$dimen;->com_facebook_likeview_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 444
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 447
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 448
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    iget v1, p0, Lcom/facebook/widget/LikeView;->foregroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 449
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 451
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 452
    const/4 v1, -0x2

    .line 453
    const/4 v2, -0x1

    .line 451
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 454
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    return-void
.end method

.method private parseAttributes(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 358
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/android/R$styleable;->com_facebook_like_view:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_0

    .line 367
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LikeView;->objectId:Ljava/lang/String;

    .line 369
    const/4 v1, 0x2

    .line 370
    sget-object v2, Lcom/facebook/widget/LikeView$Style;->DEFAULT:Lcom/facebook/widget/LikeView$Style;

    invoke-static {v2}, Lcom/facebook/widget/LikeView$Style;->access$2(Lcom/facebook/widget/LikeView$Style;)I

    move-result v2

    .line 369
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 368
    invoke-static {v1}, Lcom/facebook/widget/LikeView$Style;->fromInt(I)Lcom/facebook/widget/LikeView$Style;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/LikeView$Style;

    .line 371
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/LikeView$Style;

    if-nez v1, :cond_2

    .line 372
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported value for LikeView \'style\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_2
    const/4 v1, 0x3

    .line 377
    sget-object v2, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->DEFAULT:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    invoke-static {v2}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->access$2(Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;)I

    move-result v2

    .line 376
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 375
    invoke-static {v1}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->fromInt(I)Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    .line 378
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    if-nez v1, :cond_3

    .line 379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported value for LikeView \'auxiliary_view_position\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_3
    const/4 v1, 0x4

    .line 384
    sget-object v2, Lcom/facebook/widget/LikeView$HorizontalAlignment;->DEFAULT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    invoke-static {v2}, Lcom/facebook/widget/LikeView$HorizontalAlignment;->access$2(Lcom/facebook/widget/LikeView$HorizontalAlignment;)I

    move-result v2

    .line 383
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 382
    invoke-static {v1}, Lcom/facebook/widget/LikeView$HorizontalAlignment;->fromInt(I)Lcom/facebook/widget/LikeView$HorizontalAlignment;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    .line 385
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    if-nez v1, :cond_4

    .line 386
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported value for LikeView \'horizontal_alignment\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_4
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/widget/LikeView;->foregroundColor:I

    .line 391
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private setObjectIdForced(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->tearDownObjectAssociations()V

    .line 497
    iput-object p1, p0, Lcom/facebook/widget/LikeView;->objectId:Ljava/lang/String;

    .line 498
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    :goto_0
    return-void

    .line 502
    :cond_0
    new-instance v0, Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;-><init>(Lcom/facebook/widget/LikeView;Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;)V

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->creationCallback:Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;

    .line 504
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 506
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->creationCallback:Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;

    .line 503
    invoke-static {v0, p1, v1}, Lcom/facebook/internal/LikeActionController;->getControllerForObjectId(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/LikeActionController$CreationCallback;)V

    goto :goto_0
.end method

.method private tearDownObjectAssociations()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 525
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 527
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 529
    iput-object v2, p0, Lcom/facebook/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->creationCallback:Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->creationCallback:Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;

    invoke-virtual {v0}, Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;->cancel()V

    .line 538
    iput-object v2, p0, Lcom/facebook/widget/LikeView;->creationCallback:Lcom/facebook/widget/LikeView$LikeActionControllerCreationCallback;

    .line 541
    :cond_1
    iput-object v2, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    .line 542
    return-void
.end method

.method private toggleLike()V
    .locals 3

    .prologue
    .line 467
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 469
    const/4 v1, 0x0

    .line 470
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 471
    check-cast v0, Landroid/app/Activity;

    .line 479
    :goto_0
    if-eqz v0, :cond_0

    .line 480
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->getAnalyticsParameters()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/facebook/internal/LikeActionController;->toggleLike(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 483
    :cond_0
    return-void

    .line 472
    :cond_1
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_2

    .line 473
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 474
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 475
    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private updateBoxCountCaretPosition()V
    .locals 3

    .prologue
    .line 628
    invoke-static {}, Lcom/facebook/widget/LikeView;->$SWITCH_TABLE$com$facebook$widget$LikeView$AuxiliaryViewPosition()[I

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v1}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 642
    :goto_0
    return-void

    .line 630
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/internal/LikeBoxCountView;

    sget-object v1, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->BOTTOM:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/LikeBoxCountView;->setCaretPosition(Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;)V

    goto :goto_0

    .line 633
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/internal/LikeBoxCountView;

    sget-object v1, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->TOP:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/LikeBoxCountView;->setCaretPosition(Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;)V

    goto :goto_0

    .line 636
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/internal/LikeBoxCountView;

    .line 637
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    sget-object v2, Lcom/facebook/widget/LikeView$HorizontalAlignment;->RIGHT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    if-ne v0, v2, :cond_0

    .line 638
    sget-object v0, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->RIGHT:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    .line 636
    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/internal/LikeBoxCountView;->setCaretPosition(Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;)V

    goto :goto_0

    .line 639
    :cond_0
    sget-object v0, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->LEFT:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    goto :goto_1

    .line 628
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateLayout()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 560
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 561
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/internal/LikeButton;

    invoke-virtual {v1}, Lcom/facebook/internal/LikeButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 563
    iget-object v2, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    sget-object v5, Lcom/facebook/widget/LikeView$HorizontalAlignment;->LEFT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    if-ne v2, v5, :cond_3

    const/4 v2, 0x3

    .line 566
    :goto_0
    or-int/lit8 v5, v2, 0x30

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 567
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 570
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 571
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/internal/LikeBoxCountView;

    invoke-virtual {v0, v6}, Lcom/facebook/internal/LikeBoxCountView;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/LikeView$Style;

    sget-object v1, Lcom/facebook/widget/LikeView$Style;->STANDARD:Lcom/facebook/widget/LikeView$Style;

    if-ne v0, v1, :cond_5

    .line 575
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    if-eqz v0, :cond_5

    .line 576
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    invoke-virtual {v0}, Lcom/facebook/internal/LikeActionController;->getSocialSentence()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 577
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    move-object v1, v0

    .line 587
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 590
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 591
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 593
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    .line 594
    iget-object v2, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    sget-object v5, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->INLINE:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    if-ne v2, v5, :cond_0

    move v3, v4

    .line 593
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 598
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    sget-object v2, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->TOP:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    if-eq v0, v2, :cond_1

    .line 599
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    sget-object v2, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->INLINE:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    if-ne v0, v2, :cond_6

    .line 600
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    sget-object v2, Lcom/facebook/widget/LikeView$HorizontalAlignment;->RIGHT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    if-ne v0, v2, :cond_6

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/internal/LikeButton;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 603
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/internal/LikeButton;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 610
    :goto_2
    invoke-static {}, Lcom/facebook/widget/LikeView;->$SWITCH_TABLE$com$facebook$widget$LikeView$AuxiliaryViewPosition()[I

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v2}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 625
    :cond_2
    :goto_3
    return-void

    .line 564
    :cond_3
    iget-object v2, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    sget-object v5, Lcom/facebook/widget/LikeView$HorizontalAlignment;->CENTER:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    if-ne v2, v5, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    goto :goto_0

    .line 578
    :cond_5
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/LikeView$Style;

    sget-object v1, Lcom/facebook/widget/LikeView$Style;->BOX_COUNT:Lcom/facebook/widget/LikeView$Style;

    if-ne v0, v1, :cond_2

    .line 579
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    if-eqz v0, :cond_2

    .line 580
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    invoke-virtual {v0}, Lcom/facebook/internal/LikeActionController;->getLikeCountString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 581
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateBoxCountCaretPosition()V

    .line 582
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/internal/LikeBoxCountView;

    move-object v1, v0

    .line 583
    goto :goto_1

    .line 606
    :cond_6
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 607
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 612
    :pswitch_0
    iget v0, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v2, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v3, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v4, p0, Lcom/facebook/widget/LikeView;->internalPadding:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 615
    :pswitch_1
    iget v0, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v2, p0, Lcom/facebook/widget/LikeView;->internalPadding:I

    iget v3, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v4, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 618
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    sget-object v2, Lcom/facebook/widget/LikeView$HorizontalAlignment;->RIGHT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    if-ne v0, v2, :cond_7

    .line 619
    iget v0, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v2, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v3, p0, Lcom/facebook/widget/LikeView;->internalPadding:I

    iget v4, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 621
    :cond_7
    iget v0, p0, Lcom/facebook/widget/LikeView;->internalPadding:I

    iget v2, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v3, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v4, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 610
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateLikeStateAndLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 545
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    if-nez v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/internal/LikeButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/internal/LikeButton;->setLikeState(Z)V

    .line 547
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/internal/LikeBoxCountView;

    invoke-virtual {v0, v2}, Lcom/facebook/internal/LikeBoxCountView;->setText(Ljava/lang/String;)V

    .line 555
    :goto_0
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateLayout()V

    .line 556
    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/internal/LikeButton;

    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    invoke-virtual {v1}, Lcom/facebook/internal/LikeActionController;->isObjectLiked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/internal/LikeButton;->setLikeState(Z)V

    .line 551
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    invoke-virtual {v1}, Lcom/facebook/internal/LikeActionController;->getSocialSentence()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/internal/LikeBoxCountView;

    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/internal/LikeActionController;

    invoke-virtual {v1}, Lcom/facebook/internal/LikeActionController;->getLikeCountString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/internal/LikeBoxCountView;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getOnErrorListener()Lcom/facebook/widget/LikeView$OnErrorListener;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->onErrorListener:Lcom/facebook/widget/LikeView$OnErrorListener;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LikeView;->setObjectId(Ljava/lang/String;)V

    .line 354
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 355
    return-void
.end method

.method public setAuxiliaryViewPosition(Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;)V
    .locals 1

    .prologue
    .line 298
    if-eqz p1, :cond_1

    .line 299
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    if-eq v0, p1, :cond_0

    .line 300
    iput-object p1, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    .line 302
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateLayout()V

    .line 304
    :cond_0
    return-void

    .line 298
    :cond_1
    sget-object p1, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->DEFAULT:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    goto :goto_0
.end method

.method public setForegroundColor(I)V
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/facebook/widget/LikeView;->foregroundColor:I

    if-eq v0, p1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    :cond_0
    return-void
.end method

.method public setHorizontalAlignment(Lcom/facebook/widget/LikeView$HorizontalAlignment;)V
    .locals 1

    .prologue
    .line 311
    if-eqz p1, :cond_1

    .line 312
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    if-eq v0, p1, :cond_0

    .line 313
    iput-object p1, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    .line 315
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateLayout()V

    .line 317
    :cond_0
    return-void

    .line 311
    :cond_1
    sget-object p1, Lcom/facebook/widget/LikeView$HorizontalAlignment;->DEFAULT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    goto :goto_0
.end method

.method public setLikeViewStyle(Lcom/facebook/widget/LikeView$Style;)V
    .locals 1

    .prologue
    .line 285
    if-eqz p1, :cond_1

    .line 286
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/LikeView$Style;

    if-eq v0, p1, :cond_0

    .line 287
    iput-object p1, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/LikeView$Style;

    .line 289
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateLayout()V

    .line 291
    :cond_0
    return-void

    .line 285
    :cond_1
    sget-object p1, Lcom/facebook/widget/LikeView$Style;->DEFAULT:Lcom/facebook/widget/LikeView$Style;

    goto :goto_0
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->objectId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    invoke-direct {p0, v0}, Lcom/facebook/widget/LikeView;->setObjectIdForced(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateLikeStateAndLayout()V

    .line 278
    :cond_0
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/widget/LikeView$OnErrorListener;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/facebook/widget/LikeView;->onErrorListener:Lcom/facebook/widget/LikeView$OnErrorListener;

    .line 338
    return-void
.end method
