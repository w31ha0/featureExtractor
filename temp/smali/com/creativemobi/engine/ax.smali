.class final Lcom/creativemobi/engine/ax;
.super Ljava/lang/Object;
.source "RacingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Landroid/view/View;

.field private synthetic c:Lcom/creativemobi/engine/bp;


# direct methods
.method constructor <init>(Lcom/creativemobi/engine/bp;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 1536
    iput-object p1, p0, Lcom/creativemobi/engine/ax;->c:Lcom/creativemobi/engine/bp;

    iput p2, p0, Lcom/creativemobi/engine/ax;->a:I

    iput-object p3, p0, Lcom/creativemobi/engine/ax;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1538
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/creativemobi/engine/ax;->c:Lcom/creativemobi/engine/bp;

    invoke-virtual {v1}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1539
    iget v1, p0, Lcom/creativemobi/engine/ax;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 1540
    iget-object v1, p0, Lcom/creativemobi/engine/ax;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1541
    const/16 v1, 0x50

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1542
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1543
    return-void
.end method
