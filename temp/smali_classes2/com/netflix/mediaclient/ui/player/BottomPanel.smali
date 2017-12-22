.class public final Lcom/netflix/mediaclient/ui/player/BottomPanel;
.super Lcom/netflix/mediaclient/ui/player/PlayerSection;
.source "BottomPanel.java"


# static fields
.field private static final BIF_OVERLAY_LEFT_MARGIN:I = 0xa

.field private static final EXTRA_HANDLER_ANIMATION_MS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "screen"


# instance fields
.field private bottomGradient:Landroid/view/View;

.field protected bottomPanel:Landroid/view/View;

.field protected currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

.field private currentTimeProgress:I

.field protected durationLabel:Landroid/widget/TextView;

.field private extraSeekbarHandler:Landroid/view/View;

.field protected formatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;

.field private mZoomEnabled:Z

.field protected mdxSid:Ljava/lang/String;

.field protected media:Landroid/widget/ImageButton;

.field protected skipBack:Landroid/widget/ImageButton;

.field protected timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

.field protected timelineWasPreviouslyRendered:I

.field private videoPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field protected zoom:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;)V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerSection;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->mZoomEnabled:Z

    .line 127
    new-instance v0, Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/TimeFormatterHelper;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->formatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    .line 128
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->init(Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;)V

    .line 129
    return-void
.end method

.method public static calculateTimelineMargin(Landroid/widget/ImageButton;Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;I)I
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 279
    new-array v0, v1, [I

    .line 280
    new-array v1, v1, [I

    .line 281
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->getLocationOnScreen([I)V

    .line 282
    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->getLocationOnScreen([I)V

    .line 284
    aget v0, v0, v2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->computeXOffsetFromProgress(J)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 285
    return v0
.end method

.method private init(Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;)V
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 134
    const v0, 0x7f1002cc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->durationLabel:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f1002c8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->bottomPanel:Landroid/view/View;

    .line 136
    const v0, 0x7f1002c3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->bottomGradient:Landroid/view/View;

    .line 138
    const v0, 0x7f1002cb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    .line 139
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->videoPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->videoPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getUiResources()Lcom/netflix/mediaclient/ui/player/ResourceHelper;

    move-result-object v3

    iget v3, v3, Lcom/netflix/mediaclient/ui/player/ResourceHelper;->timelineThumbOffsetInDip:I

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setThumbOffset(I)V

    .line 144
    const v0, 0x7f1002c9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->media:Landroid/widget/ImageButton;

    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->media:Landroid/widget/ImageButton;

    iget-object v2, p1, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->playPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v0, 0x7f1002ca

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->skipBack:Landroid/widget/ImageButton;

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->skipBack:Landroid/widget/ImageButton;

    iget-object v2, p1, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->skipBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v0, 0x7f1002cd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->zoom:Landroid/widget/ImageButton;

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->zoom:Landroid/widget/ImageButton;

    iget-object v2, p1, Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;->zoomListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v0, 0x7f1002d4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->extraSeekbarHandler:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->newInstance(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/CurrentTime;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    .line 156
    return-void
.end method


# virtual methods
.method public changeActionState(Z)V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->changeActionState(ZZ)V

    .line 204
    return-void
.end method

.method public changeActionState(ZZ)V
    .locals 3

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->enableButtons(Z)V

    .line 209
    if-eqz p2, :cond_0

    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setEnabled(Z)V

    .line 214
    :cond_0
    if-eqz p1, :cond_1

    const v0, 0x7f0f0110

    .line 215
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->durationLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    return-void

    .line 214
    :cond_1
    const v0, 0x7f0f0069

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->media:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->media:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->skipBack:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->skipBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->zoom:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->zoom:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 246
    :cond_3
    return-void
.end method

.method public enableButtons(Z)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->media:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->enableButton(Landroid/view/View;Z)V

    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->skipBack:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->enableButton(Landroid/view/View;Z)V

    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->zoom:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->enableButton(Landroid/view/View;Z)V

    .line 226
    return-void
.end method

.method public finishDragging()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->extraSeekbarHandler:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    .line 464
    return-void
.end method

.method public getCurrentProgress()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTimeProgress:I

    return v0
.end method

.method public getCurrentTime()Lcom/netflix/mediaclient/ui/player/CurrentTime;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    return-object v0
.end method

.method public getFormatter()Lcom/netflix/mediaclient/util/TimeFormatterHelper;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->formatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    return-object v0
.end method

.method public getTimeXAndUpdateHandler(Landroid/view/View;)I
    .locals 5

    .prologue
    const/16 v1, 0xa

    const/4 v4, 0x0

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->media:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    iget v3, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTimeProgress:I

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->calculateTimelineMargin(Landroid/widget/ImageButton;Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;I)I

    move-result v2

    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->extraSeekbarHandler:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->extraSeekbarHandler:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 266
    invoke-virtual {p1, v4, v4}, Landroid/view/View;->measure(II)V

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    .line 268
    if-le v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getTimeline()Lcom/netflix/mediaclient/android/widget/NetflixSeekBar;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    return-object v0
.end method

.method public declared-synchronized hide()V
    .locals 2

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->hide()V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->bottomPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->bottomGradient:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 167
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->finishDragging()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initProgress(I)V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setMax(I)V

    .line 414
    :cond_0
    return-void
.end method

.method public playExtraHandlerAnimation(ILjava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 289
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->extraSeekbarHandler:Landroid/view/View;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playExtraHandlerAnimation(ILjava/lang/Runnable;Lcom/netflix/mediaclient/ui/player/CurrentTime;Landroid/view/View;Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;)V

    .line 290
    return-void
.end method

.method public playExtraHandlerAnimation(ILjava/lang/Runnable;Lcom/netflix/mediaclient/ui/player/CurrentTime;Landroid/view/View;Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;)V
    .locals 5

    .prologue
    .line 300
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->media:Landroid/widget/ImageButton;

    invoke-static {v0, p5, p1}, Lcom/netflix/mediaclient/ui/player/BottomPanel;->calculateTimelineMargin(Landroid/widget/ImageButton;Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;I)I

    move-result v0

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    .line 303
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 304
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v2, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 305
    new-instance v2, Lcom/netflix/mediaclient/ui/player/BottomPanel$2;

    invoke-direct {v2, p0, v0, p4}, Lcom/netflix/mediaclient/ui/player/BottomPanel$2;-><init>(Lcom/netflix/mediaclient/ui/player/BottomPanel;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 313
    new-instance v0, Lcom/netflix/mediaclient/ui/player/BottomPanel$3;

    invoke-direct {v0, p0, p3, p4, p2}, Lcom/netflix/mediaclient/ui/player/BottomPanel$3;-><init>(Lcom/netflix/mediaclient/ui/player/BottomPanel;Lcom/netflix/mediaclient/ui/player/CurrentTime;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 338
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 339
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 340
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 341
    return-void
.end method

.method public setMediaImage(Z)V
    .locals 2

    .prologue
    .line 254
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->media:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getUiResources()Lcom/netflix/mediaclient/ui/player/ResourceHelper;

    move-result-object v0

    iget v0, v0, Lcom/netflix/mediaclient/ui/player/ResourceHelper;->play:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 255
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getUiResources()Lcom/netflix/mediaclient/ui/player/ResourceHelper;

    move-result-object v0

    iget v0, v0, Lcom/netflix/mediaclient/ui/player/ResourceHelper;->pause:I

    goto :goto_0
.end method

.method public setPlayPauseVisibility(I)V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->media:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 358
    return-void
.end method

.method public setProgress(IIZ)I
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 383
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setProgress(I)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->durationLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-lez p2, :cond_1

    .line 387
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->durationLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->formatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    sub-int v2, p2, p1

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/util/TimeFormatterHelper;->getStringForMs(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    :cond_1
    iput p1, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTimeProgress:I

    .line 393
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->bottomPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->updateCurrentTime()V

    .line 399
    :cond_2
    return p1
.end method

.method public setSeekbarTrackingEnabled(Z)V
    .locals 2

    .prologue
    .line 219
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->videoPositionListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 220
    return-void

    .line 219
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setZoomEnabled(Z)V
    .locals 0

    .prologue
    .line 422
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->mZoomEnabled:Z

    .line 423
    return-void
.end method

.method public setZoomImage(Z)V
    .locals 2

    .prologue
    .line 349
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->zoom:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getUiResources()Lcom/netflix/mediaclient/ui/player/ResourceHelper;

    move-result-object v0

    iget v0, v0, Lcom/netflix/mediaclient/ui/player/ResourceHelper;->zoomIn:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 350
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getUiResources()Lcom/netflix/mediaclient/ui/player/ResourceHelper;

    move-result-object v0

    iget v0, v0, Lcom/netflix/mediaclient/ui/player/ResourceHelper;->zoomOut:I

    goto :goto_0
.end method

.method public setZoomVisibility(I)V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->zoom:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 365
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->mZoomEnabled:Z

    .line 366
    return-void

    .line 365
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized show()V
    .locals 3

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->show()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->bottomPanel:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->bottomGradient:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->zoom:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->mZoomEnabled:Z

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->currentTime:Lcom/netflix/mediaclient/ui/player/CurrentTime;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/CurrentTime;->updateCurrentTime()V

    .line 180
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timelineWasPreviouslyRendered:I

    if-gtz v0, :cond_1

    .line 181
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Timeline was NOT visible before, its location is NOT known, delay until is rendered first time"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->timeline:Lcom/netflix/mediaclient/android/widget/TimelineSeekBar;

    .line 183
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 184
    new-instance v2, Lcom/netflix/mediaclient/ui/player/BottomPanel$1;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/ui/player/BottomPanel$1;-><init>(Lcom/netflix/mediaclient/ui/player/BottomPanel;Landroid/widget/SeekBar;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_1
    monitor-exit p0

    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startDragging()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/BottomPanel;->extraSeekbarHandler:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    .line 457
    return-void
.end method
