.class public Lcom/google/android/exoplayer2/ui/PlaybackControlView;
.super Landroid/widget/FrameLayout;
.source "PlaybackControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;,
        Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_FAST_FORWARD_MS:I = 0x3a98

.field public static final DEFAULT_REWIND_MS:I = 0x1388

.field public static final DEFAULT_SHOW_TIMEOUT_MS:I = 0x1388

.field private static final MAX_POSITION_FOR_SEEK_TO_PREVIOUS:J = 0xbb8L

.field private static final PROGRESS_BAR_MAX:I = 0x3e8


# instance fields
.field private final componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

.field private final currentWindow:Lcom/google/android/exoplayer2/Timeline$Window;

.field private dragging:Z

.field private final fastForwardButton:Landroid/view/View;

.field private fastForwardMs:I

.field private final formatBuilder:Ljava/lang/StringBuilder;

.field private final formatter:Ljava/util/Formatter;

.field private final hideAction:Ljava/lang/Runnable;

.field private hideAtMs:J

.field private final nextButton:Landroid/view/View;

.field private final playButton:Landroid/widget/ImageButton;

.field private player:Lcom/google/android/exoplayer2/ExoPlayer;

.field private final previousButton:Landroid/view/View;

.field private final progressBar:Landroid/widget/SeekBar;

.field private final rewindButton:Landroid/view/View;

.field private rewindMs:I

.field private showTimeoutMs:I

.field private final time:Landroid/widget/TextView;

.field private final timeCurrent:Landroid/widget/TextView;

.field private final updateProgressAction:Ljava/lang/Runnable;

.field private visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v2, 0x1388

    const/4 v3, 0x0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    new-instance v1, Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    .line 91
    new-instance v1, Lcom/google/android/exoplayer2/ui/PlaybackControlView$2;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$2;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    .line 109
    iput v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    .line 110
    const/16 v1, 0x3a98

    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    .line 111
    iput v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    .line 112
    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/R$styleable;->PlaybackControlView:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 116
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lcom/google/android/exoplayer2/R$styleable;->PlaybackControlView_rewind_increment:I

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    .line 117
    sget v1, Lcom/google/android/exoplayer2/R$styleable;->PlaybackControlView_fastforward_increment:I

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    .line 119
    sget v1, Lcom/google/android/exoplayer2/R$styleable;->PlaybackControlView_show_timeout:I

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->currentWindow:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatBuilder:Ljava/lang/StringBuilder;

    .line 127
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatter:Ljava/util/Formatter;

    .line 128
    new-instance v1, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    .line 130
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/android/exoplayer2/R$layout;->exo_playback_control_view:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 131
    sget v1, Lcom/google/android/exoplayer2/R$id;->time:I

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->time:Landroid/widget/TextView;

    .line 132
    sget v1, Lcom/google/android/exoplayer2/R$id;->time_current:I

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeCurrent:Landroid/widget/TextView;

    .line 133
    sget v1, Lcom/google/android/exoplayer2/R$id;->mediacontroller_progress:I

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->progressBar:Landroid/widget/SeekBar;

    .line 134
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->progressBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 135
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->progressBar:Landroid/widget/SeekBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 136
    sget v1, Lcom/google/android/exoplayer2/R$id;->play:I

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/widget/ImageButton;

    .line 137
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    sget v1, Lcom/google/android/exoplayer2/R$id;->prev:I

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    .line 139
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    sget v1, Lcom/google/android/exoplayer2/R$id;->next:I

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    .line 141
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    sget v1, Lcom/google/android/exoplayer2/R$id;->rew:I

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    .line 143
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    sget v1, Lcom/google/android/exoplayer2/R$id;->ffwd:I

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    .line 145
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void

    .line 121
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgress()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateNavigation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->next()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previous()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForward()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewind()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer2/ui/PlaybackControlView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->dragging:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ui/PlaybackControlView;I)J
    .locals 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->positionValue(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ui/PlaybackControlView;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;
    .param p1, "x1"    # J

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeCurrent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAfterTimeout()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updatePlayPauseButton()V

    return-void
.end method

.method private fastForward()V
    .locals 6

    .prologue
    .line 420
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    if-gtz v0, :cond_0

    .line 424
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(J)V

    goto :goto_0
.end method

.method private hideAfterTimeout()V
    .locals 4

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 265
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    if-lez v0, :cond_1

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    .line 267
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    goto :goto_0
.end method

.method private next()V
    .locals 4

    .prologue
    .line 400
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 401
    .local v0, "currentTimeline":Lcom/google/android/exoplayer2/Timeline;
    if-nez v0, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentWindowIndex()I

    move-result v1

    .line 405
    .local v1, "currentWindowIndex":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 406
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/ExoPlayer;->seekToDefaultPosition(I)V

    goto :goto_0

    .line 407
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->currentWindow:Lcom/google/android/exoplayer2/Timeline$Window;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;Z)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v2, :cond_0

    .line 408
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->seekToDefaultPosition()V

    goto :goto_0
.end method

.method private positionValue(I)J
    .locals 6
    .param p1, "progress"    # I

    .prologue
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 380
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v4, :cond_0

    move-wide v0, v2

    .line 381
    .local v0, "duration":J
    :goto_0
    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    :goto_1
    return-wide v2

    .line 380
    .end local v0    # "duration":J
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v0

    goto :goto_0

    .line 381
    .restart local v0    # "duration":J
    :cond_1
    int-to-long v2, p1

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    goto :goto_1
.end method

.method private previous()V
    .locals 6

    .prologue
    .line 385
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 386
    .local v0, "currentTimeline":Lcom/google/android/exoplayer2/Timeline;
    if-nez v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentWindowIndex()I

    move-result v1

    .line 390
    .local v1, "currentWindowIndex":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->currentWindow:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 391
    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->currentWindow:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->currentWindow:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-nez v2, :cond_2

    .line 393
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/ExoPlayer;->seekToDefaultPosition(I)V

    goto :goto_0

    .line 395
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(J)V

    goto :goto_0
.end method

.method private progressBarValue(J)I
    .locals 5
    .param p1, "position"    # J

    .prologue
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 374
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v4, :cond_1

    move-wide v0, v2

    .line 375
    .local v0, "duration":J
    :goto_0
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 374
    .end local v0    # "duration":J
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v0

    goto :goto_0

    .line 375
    .restart local v0    # "duration":J
    :cond_2
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    div-long/2addr v2, v0

    long-to-int v2, v2

    goto :goto_1
.end method

.method private rewind()V
    .locals 6

    .prologue
    .line 413
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    if-gtz v0, :cond_0

    .line 417
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    int-to-long v4, v1

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(J)V

    goto :goto_0
.end method

.method private setButtonEnabled(ZLandroid/view/View;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 351
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 352
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    .line 353
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 354
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 358
    :goto_1
    return-void

    .line 353
    :cond_0
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0

    .line 356
    :cond_1
    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    goto :goto_2
.end method

.method private stringForTime(J)Ljava/lang/String;
    .locals 13
    .param p1, "timeMs"    # J

    .prologue
    .line 361
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, p1, v8

    if-nez v8, :cond_0

    .line 362
    const-wide/16 p1, 0x0

    .line 364
    :cond_0
    const-wide/16 v8, 0x1f4

    add-long/2addr v8, p1

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 365
    .local v6, "totalSeconds":J
    const-wide/16 v8, 0x3c

    rem-long v4, v6, v8

    .line 366
    .local v4, "seconds":J
    const-wide/16 v8, 0x3c

    div-long v8, v6, v8

    const-wide/16 v10, 0x3c

    rem-long v2, v8, v10

    .line 367
    .local v2, "minutes":J
    const-wide/16 v8, 0xe10

    div-long v0, v6, v8

    .line 368
    .local v0, "hours":J
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatBuilder:Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 369
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_1

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatter:Ljava/util/Formatter;

    const-string v9, "%d:%02d:%02d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_0
    return-object v8

    :cond_1
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatter:Ljava/util/Formatter;

    const-string v9, "%02d:%02d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 370
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method private updateAll()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updatePlayPauseButton()V

    .line 277
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateNavigation()V

    .line 278
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgress()V

    .line 279
    return-void
.end method

.method private updateNavigation()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 294
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow()Z

    move-result v8

    if-nez v8, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v8}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 298
    .local v0, "currentTimeline":Lcom/google/android/exoplayer2/Timeline;
    :goto_1
    if-eqz v0, :cond_6

    move v4, v7

    .line 299
    .local v4, "haveTimeline":Z
    :goto_2
    const/4 v5, 0x0

    .line 300
    .local v5, "isSeekable":Z
    const/4 v3, 0x0

    .line 301
    .local v3, "enablePrevious":Z
    const/4 v2, 0x0

    .line 302
    .local v2, "enableNext":Z
    if-eqz v4, :cond_4

    .line 303
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v8}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentWindowIndex()I

    move-result v1

    .line 304
    .local v1, "currentWindowIndex":I
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->currentWindow:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v8}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 305
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->currentWindow:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v5, v8, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    .line 306
    if-gtz v1, :cond_2

    if-nez v5, :cond_2

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->currentWindow:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v8, v8, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v8, :cond_7

    :cond_2
    move v3, v7

    .line 307
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-lt v1, v8, :cond_3

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->currentWindow:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v8, v8, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v8, :cond_8

    :cond_3
    move v2, v7

    .line 310
    .end local v1    # "currentWindowIndex":I
    :cond_4
    :goto_4
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    invoke-direct {p0, v3, v8}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    .line 311
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    invoke-direct {p0, v2, v8}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    .line 312
    iget v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    if-lez v8, :cond_9

    if-eqz v5, :cond_9

    move v8, v7

    :goto_5
    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    invoke-direct {p0, v8, v9}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    .line 313
    iget v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    if-lez v8, :cond_a

    if-eqz v5, :cond_a

    :goto_6
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    invoke-direct {p0, v7, v6}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    .line 314
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_0

    .line 297
    .end local v0    # "currentTimeline":Lcom/google/android/exoplayer2/Timeline;
    .end local v2    # "enableNext":Z
    .end local v3    # "enablePrevious":Z
    .end local v4    # "haveTimeline":Z
    .end local v5    # "isSeekable":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0    # "currentTimeline":Lcom/google/android/exoplayer2/Timeline;
    :cond_6
    move v4, v6

    .line 298
    goto :goto_2

    .restart local v1    # "currentWindowIndex":I
    .restart local v2    # "enableNext":Z
    .restart local v3    # "enablePrevious":Z
    .restart local v4    # "haveTimeline":Z
    .restart local v5    # "isSeekable":Z
    :cond_7
    move v3, v6

    .line 306
    goto :goto_3

    :cond_8
    move v2, v6

    .line 307
    goto :goto_4

    .end local v1    # "currentWindowIndex":I
    :cond_9
    move v8, v6

    .line 312
    goto :goto_5

    :cond_a
    move v7, v6

    .line 313
    goto :goto_6
.end method

.method private updatePlayPauseButton()V
    .locals 4

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 286
    .local v1, "playing":Z
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v1, :cond_3

    sget v2, Lcom/google/android/exoplayer2/R$string;->exo_controls_pause_description:I

    :goto_2
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "contentDescription":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    sget v2, Lcom/google/android/exoplayer2/R$drawable;->exo_controls_pause:I

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 285
    .end local v0    # "contentDescription":Ljava/lang/String;
    .end local v1    # "playing":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 286
    .restart local v1    # "playing":Z
    :cond_3
    sget v2, Lcom/google/android/exoplayer2/R$string;->exo_controls_play_description:I

    goto :goto_2

    .line 289
    .restart local v0    # "contentDescription":Ljava/lang/String;
    :cond_4
    sget v2, Lcom/google/android/exoplayer2/R$drawable;->exo_controls_play:I

    goto :goto_3
.end method

.method private updateProgress()V
    .locals 14

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow()Z

    move-result v7

    if-nez v7, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v7, :cond_5

    const-wide/16 v4, 0x0

    .line 322
    .local v4, "duration":J
    :goto_1
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v7, :cond_6

    const-wide/16 v8, 0x0

    .line 323
    .local v8, "position":J
    :goto_2
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->time:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->stringForTime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-boolean v7, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->dragging:Z

    if-nez v7, :cond_2

    .line 325
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeCurrent:Landroid/widget/TextView;

    invoke-direct {p0, v8, v9}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->stringForTime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :cond_2
    iget-boolean v7, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->dragging:Z

    if-nez v7, :cond_3

    .line 328
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->progressBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v8, v9}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->progressBarValue(J)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 330
    :cond_3
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v7, :cond_7

    const-wide/16 v0, 0x0

    .line 331
    .local v0, "bufferedPosition":J
    :goto_3
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->progressBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->progressBarValue(J)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 333
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 335
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v7, :cond_8

    const/4 v6, 0x1

    .line 336
    .local v6, "playbackState":I
    :goto_4
    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    .line 338
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v7}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_9

    .line 339
    const-wide/16 v10, 0x3e8

    const-wide/16 v12, 0x3e8

    rem-long v12, v8, v12

    sub-long v2, v10, v12

    .line 340
    .local v2, "delayMs":J
    const-wide/16 v10, 0xc8

    cmp-long v7, v2, v10

    if-gez v7, :cond_4

    .line 341
    const-wide/16 v10, 0x3e8

    add-long/2addr v2, v10

    .line 346
    :cond_4
    :goto_5
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v7, v2, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 321
    .end local v0    # "bufferedPosition":J
    .end local v2    # "delayMs":J
    .end local v4    # "duration":J
    .end local v6    # "playbackState":I
    .end local v8    # "position":J
    :cond_5
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v7}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v4

    goto :goto_1

    .line 322
    .restart local v4    # "duration":J
    :cond_6
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v7}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v8

    goto :goto_2

    .line 330
    .restart local v8    # "position":J
    :cond_7
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v7}, Lcom/google/android/exoplayer2/ExoPlayer;->getBufferedPosition()J

    move-result-wide v0

    goto :goto_3

    .line 335
    .restart local v0    # "bufferedPosition":J
    :cond_8
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v7}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v6

    goto :goto_4

    .line 344
    .restart local v6    # "playbackState":I
    :cond_9
    const-wide/16 v2, 0x3e8

    .restart local v2    # "delayMs":J
    goto :goto_5
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 449
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    .line 450
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 480
    :goto_0
    return v0

    .line 452
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 459
    :sswitch_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewind()V

    .line 479
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->show()V

    move v0, v1

    .line 480
    goto :goto_0

    .line 455
    :sswitch_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForward()V

    goto :goto_1

    .line 462
    :sswitch_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    :cond_2
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_1

    .line 465
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_1

    .line 468
    :sswitch_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_1

    .line 471
    :sswitch_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->next()V

    goto :goto_1

    .line 474
    :sswitch_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previous()V

    goto :goto_1

    .line 452
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x55 -> :sswitch_2
        0x57 -> :sswitch_5
        0x58 -> :sswitch_6
        0x59 -> :sswitch_0
        0x5a -> :sswitch_1
        0x7e -> :sswitch_3
        0x7f -> :sswitch_4
    .end sparse-switch
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    return-object v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;->onVisibilityChange(I)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 252
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    .line 254
    :cond_1
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 6

    .prologue
    .line 428
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 429
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 430
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 431
    .local v0, "delayMs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 432
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hide()V

    .line 437
    .end local v0    # "delayMs":J
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateAll()V

    .line 438
    return-void

    .line 434
    .restart local v0    # "delayMs":J
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 442
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 443
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 444
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 445
    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 0
    .param p1, "fastForwardMs"    # I

    .prologue
    .line 199
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    .line 200
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateNavigation()V

    .line 201
    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/ExoPlayer;)V
    .locals 2
    .param p1, "player"    # Lcom/google/android/exoplayer2/ExoPlayer;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-ne v0, p1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->removeListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 167
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 168
    if-eqz p1, :cond_2

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 171
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateAll()V

    goto :goto_0
.end method

.method public setRewindIncrementMs(I)V
    .locals 0
    .param p1, "rewindMs"    # I

    .prologue
    .line 189
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    .line 190
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateNavigation()V

    .line 191
    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0
    .param p1, "showTimeoutMs"    # I

    .prologue
    .line 222
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    .line 223
    return-void
.end method

.method public setVisibilityListener(Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    .line 181
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;->onVisibilityChange(I)V

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateAll()V

    .line 238
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAfterTimeout()V

    .line 239
    return-void
.end method
