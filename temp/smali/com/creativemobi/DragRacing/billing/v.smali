.class final Lcom/creativemobi/DragRacing/billing/v;
.super Ljava/lang/Object;
.source "BillingInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/Set;

.field private synthetic b:Lcom/creativemobi/DragRacing/billing/b;


# direct methods
.method constructor <init>(Lcom/creativemobi/DragRacing/billing/b;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/creativemobi/DragRacing/billing/v;->b:Lcom/creativemobi/DragRacing/billing/b;

    iput-object p2, p0, Lcom/creativemobi/DragRacing/billing/v;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/v;->b:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->c(Lcom/creativemobi/DragRacing/billing/b;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/DragRacing/billing/v;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 356
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/v;->b:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->c(Lcom/creativemobi/DragRacing/billing/b;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 357
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 361
    iget-object v1, p0, Lcom/creativemobi/DragRacing/billing/v;->b:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v1}, Lcom/creativemobi/DragRacing/billing/b;->a(Lcom/creativemobi/DragRacing/billing/b;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-virtual {v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a()Lcom/creativemobi/engine/bp;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/creativemobi/DragRacing/billing/v;->b:Lcom/creativemobi/DragRacing/billing/b;

    invoke-virtual {v1, v0}, Lcom/creativemobi/DragRacing/billing/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 365
    :cond_1
    return-void
.end method
