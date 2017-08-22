.class public Lcom/kosbrother/tool/FastScroller$ScrollFade;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kosbrother/tool/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollFade"
.end annotation


# static fields
.field static final ALPHA_MAX:I = 0xd0

.field static final FADE_DURATION:J = 0xc8L


# instance fields
.field mFadeDuration:J

.field mStartTime:J

.field final synthetic this$0:Lcom/kosbrother/tool/FastScroller;


# direct methods
.method public constructor <init>(Lcom/kosbrother/tool/FastScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kosbrother/tool/FastScroller;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/kosbrother/tool/FastScroller$ScrollFade;->this$0:Lcom/kosbrother/tool/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAlpha()I
    .locals 10

    .prologue
    const-wide/16 v8, 0xd0

    .line 453
    iget-object v1, p0, Lcom/kosbrother/tool/FastScroller$ScrollFade;->this$0:Lcom/kosbrother/tool/FastScroller;

    invoke-virtual {v1}, Lcom/kosbrother/tool/FastScroller;->getState()I

    move-result v1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    .line 454
    const/16 v0, 0xd0

    .line 463
    :goto_0
    return v0

    .line 457
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 458
    .local v2, "now":J
    iget-wide v4, p0, Lcom/kosbrother/tool/FastScroller$ScrollFade;->mStartTime:J

    iget-wide v6, p0, Lcom/kosbrother/tool/FastScroller$ScrollFade;->mFadeDuration:J

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 459
    const/4 v0, 0x0

    .local v0, "alpha":I
    goto :goto_0

    .line 461
    .end local v0    # "alpha":I
    :cond_1
    iget-wide v4, p0, Lcom/kosbrother/tool/FastScroller$ScrollFade;->mStartTime:J

    sub-long v4, v2, v4

    mul-long/2addr v4, v8

    iget-wide v6, p0, Lcom/kosbrother/tool/FastScroller$ScrollFade;->mFadeDuration:J

    div-long/2addr v4, v6

    sub-long v4, v8, v4

    long-to-int v0, v4

    .restart local v0    # "alpha":I
    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/kosbrother/tool/FastScroller$ScrollFade;->this$0:Lcom/kosbrother/tool/FastScroller;

    invoke-virtual {v0}, Lcom/kosbrother/tool/FastScroller;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/kosbrother/tool/FastScroller$ScrollFade;->startFade()V

    .line 477
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcom/kosbrother/tool/FastScroller$ScrollFade;->getAlpha()I

    move-result v0

    if-lez v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/kosbrother/tool/FastScroller$ScrollFade;->this$0:Lcom/kosbrother/tool/FastScroller;

    invoke-static {v0}, Lcom/kosbrother/tool/FastScroller;->access$000(Lcom/kosbrother/tool/FastScroller;)Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/kosbrother/tool/FastScroller$ScrollFade;->this$0:Lcom/kosbrother/tool/FastScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kosbrother/tool/FastScroller;->setState(I)V

    goto :goto_0
.end method

.method startFade()V
    .locals 2

    .prologue
    .line 447
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/kosbrother/tool/FastScroller$ScrollFade;->mFadeDuration:J

    .line 448
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kosbrother/tool/FastScroller$ScrollFade;->mStartTime:J

    .line 449
    iget-object v0, p0, Lcom/kosbrother/tool/FastScroller$ScrollFade;->this$0:Lcom/kosbrother/tool/FastScroller;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/kosbrother/tool/FastScroller;->setState(I)V

    .line 450
    return-void
.end method
