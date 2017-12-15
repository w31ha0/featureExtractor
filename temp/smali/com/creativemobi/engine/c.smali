.class final Lcom/creativemobi/engine/c;
.super Ljava/lang/Object;
.source "RaceOfflineView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/creativemobi/engine/bn;


# direct methods
.method constructor <init>(Lcom/creativemobi/engine/bn;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/creativemobi/engine/c;->a:Lcom/creativemobi/engine/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/16 v2, 0x7d0

    .line 186
    iget-object v0, p0, Lcom/creativemobi/engine/c;->a:Lcom/creativemobi/engine/bn;

    iget v0, v0, Lcom/creativemobi/engine/bn;->c:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/c;->a:Lcom/creativemobi/engine/bn;

    iget-object v0, v0, Lcom/creativemobi/engine/bn;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "All 1/4 mile bosses defeated!"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 188
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/creativemobi/engine/c;->a:Lcom/creativemobi/engine/bn;

    iget-object v0, v0, Lcom/creativemobi/engine/bn;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "All 1/2 mile bosses defeated!"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
