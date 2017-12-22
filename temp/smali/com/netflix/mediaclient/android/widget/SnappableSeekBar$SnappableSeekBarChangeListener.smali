.class Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;
.super Ljava/lang/Object;
.source "SnappableSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private progressSnapRegion:Lcom/netflix/mediaclient/util/MathUtils$Range;

.field final synthetic this$0:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

.field private final wrappedListener:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$OnSnappableSeekBarChangeListener;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$OnSnappableSeekBarChangeListener;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->this$0:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->wrappedListener:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$OnSnappableSeekBarChangeListener;

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;I)Z
    .locals 1

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->isWithinInternalSnapRegion(I)Z

    move-result v0

    return v0
.end method

.method private computeProgressSnapRegion()Lcom/netflix/mediaclient/util/MathUtils$Range;
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->this$0:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->this$0:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getMax()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->this$0:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 233
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->this$0:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getProgress()I

    move-result v1

    .line 234
    sub-int v2, v1, v0

    .line 235
    add-int/2addr v0, v1

    .line 237
    new-instance v1, Lcom/netflix/mediaclient/util/MathUtils$Range;

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/util/MathUtils$Range;-><init>(II)V

    .line 241
    return-object v1
.end method

.method private isWithinInternalSnapRegion(I)Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->progressSnapRegion:Lcom/netflix/mediaclient/util/MathUtils$Range;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->progressSnapRegion:Lcom/netflix/mediaclient/util/MathUtils$Range;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/util/MathUtils$Range;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .prologue
    .line 254
    const-string/jumbo v0, "SnappableSeekBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProgressChanged, progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", fromUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    if-eqz p3, :cond_0

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->isWithinInternalSnapRegion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->progressSnapRegion:Lcom/netflix/mediaclient/util/MathUtils$Range;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/MathUtils$Range;->getMidpoint()I

    move-result v0

    .line 258
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/MathUtils;->constrain(III)I

    move-result p2

    .line 259
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->wrappedListener:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$OnSnappableSeekBarChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$OnSnappableSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 266
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 224
    const-string/jumbo v0, "SnappableSeekBar"

    const-string/jumbo v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->wrappedListener:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$OnSnappableSeekBarChangeListener;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$OnSnappableSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 227
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->this$0:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->access$100(Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->computeProgressSnapRegion()Lcom/netflix/mediaclient/util/MathUtils$Range;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->progressSnapRegion:Lcom/netflix/mediaclient/util/MathUtils$Range;

    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->this$0:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->access$200(Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;)V

    .line 229
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    .line 246
    const-string/jumbo v0, "SnappableSeekBar"

    const-string/jumbo v1, "onStopTrackingTouch"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->wrappedListener:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$OnSnappableSeekBarChangeListener;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->progressSnapRegion:Lcom/netflix/mediaclient/util/MathUtils$Range;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->progressSnapRegion:Lcom/netflix/mediaclient/util/MathUtils$Range;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->this$0:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/util/MathUtils$Range;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, p1, v0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$OnSnappableSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;Z)V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->progressSnapRegion:Lcom/netflix/mediaclient/util/MathUtils$Range;

    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$SnappableSeekBarChangeListener;->this$0:Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->access$300(Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;)V

    .line 250
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
