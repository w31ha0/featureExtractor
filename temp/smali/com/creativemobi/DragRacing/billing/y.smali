.class final Lcom/creativemobi/DragRacing/billing/y;
.super Ljava/lang/Object;
.source "BillingInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/creativemobi/DragRacing/billing/b;


# direct methods
.method constructor <init>(Lcom/creativemobi/DragRacing/billing/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/creativemobi/DragRacing/billing/y;->b:Lcom/creativemobi/DragRacing/billing/b;

    iput-object p2, p0, Lcom/creativemobi/DragRacing/billing/y;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 409
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/y;->b:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->f(Lcom/creativemobi/DragRacing/billing/b;)Lcom/creativemobi/DragRacing/billing/BillingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/billing/BillingService;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/y;->b:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->a(Lcom/creativemobi/DragRacing/billing/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/y;->b:Lcom/creativemobi/DragRacing/billing/b;

    iget-boolean v0, v0, Lcom/creativemobi/DragRacing/billing/b;->a:Z

    if-nez v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/y;->b:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->a(Lcom/creativemobi/DragRacing/billing/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/y;->b:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->f(Lcom/creativemobi/DragRacing/billing/b;)Lcom/creativemobi/DragRacing/billing/BillingService;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/DragRacing/billing/y;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/creativemobi/DragRacing/billing/y;->b:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v2}, Lcom/creativemobi/DragRacing/billing/b;->g(Lcom/creativemobi/DragRacing/billing/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/DragRacing/billing/BillingService;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/y;->b:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->a(Lcom/creativemobi/DragRacing/billing/b;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method
