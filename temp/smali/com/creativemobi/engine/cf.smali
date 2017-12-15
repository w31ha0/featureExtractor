.class final Lcom/creativemobi/engine/cf;
.super Ljava/util/TimerTask;
.source "SoundManager.java"


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 241
    const/4 v0, -0x1

    iput v0, p0, Lcom/creativemobi/engine/cf;->a:I

    .line 246
    const/4 v0, 0x5

    iput v0, p0, Lcom/creativemobi/engine/cf;->a:I

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/creativemobi/engine/cf;->b:Z

    .line 248
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 252
    iget v0, p0, Lcom/creativemobi/engine/cf;->a:I

    iget-boolean v1, p0, Lcom/creativemobi/engine/cf;->b:Z

    invoke-static {v0, v1}, Lcom/creativemobi/engine/SoundManager;->a(IZ)V

    .line 253
    return-void
.end method
