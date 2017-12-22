.class Lorg/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;
.super Ljava/lang/Object;
.source "ApiCompatibilityUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final MAX_TRY_COUNT:J = 0x3L

.field private static final RETRY_DELAY_MS:J = 0x1f4L


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mTryCount:I


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput-object p1, p0, Lorg/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;->mActivity:Landroid/app/Activity;

    .line 344
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 348
    iget-object v0, p0, Lorg/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 349
    iget v0, p0, Lorg/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;->mTryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;->mTryCount:I

    .line 350
    iget-object v0, p0, Lorg/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget v0, p0, Lorg/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;->mTryCount:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 352
    const-wide/16 v0, 0x1f4

    invoke-static {p0, v0, v1}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lorg/chromium/base/ApiCompatibilityUtils$FinishAndRemoveTaskWithRetry;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
