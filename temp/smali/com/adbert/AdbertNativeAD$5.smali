.class Lcom/adbert/AdbertNativeAD$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertNativeAD;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertNativeAD;

.field private b:J


# direct methods
.method constructor <init>(Lcom/adbert/AdbertNativeAD;)V
    .locals 2

    .prologue
    .line 237
    iput-object p1, p0, Lcom/adbert/AdbertNativeAD$5;->a:Lcom/adbert/AdbertNativeAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adbert/AdbertNativeAD$5;->b:J

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 242
    iget-wide v0, p0, Lcom/adbert/AdbertNativeAD$5;->b:J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    move v0, v4

    .line 260
    :goto_0
    return v0

    .line 246
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 247
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 248
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 249
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 251
    :goto_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v4, :cond_4

    sub-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v7, :cond_4

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v7, :cond_4

    .line 252
    iget-wide v0, p0, Lcom/adbert/AdbertNativeAD$5;->b:J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    move v0, v4

    .line 253
    goto :goto_0

    :cond_1
    move v0, v1

    .line 248
    goto :goto_1

    :cond_2
    move v2, v3

    .line 249
    goto :goto_2

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/adbert/AdbertNativeAD$5;->a:Lcom/adbert/AdbertNativeAD;

    invoke-virtual {v0}, Lcom/adbert/AdbertNativeAD;->a()V

    .line 257
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adbert/AdbertNativeAD$5;->b:J

    move v0, v4

    .line 258
    goto :goto_0

    :cond_4
    move v0, v5

    .line 260
    goto :goto_0
.end method
