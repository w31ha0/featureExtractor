.class final Lcom/creativemobi/engine/a;
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
    .line 193
    iput-object p1, p0, Lcom/creativemobi/engine/a;->a:Lcom/creativemobi/engine/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/creativemobi/engine/a;->a:Lcom/creativemobi/engine/bn;

    iget-object v0, v0, Lcom/creativemobi/engine/bn;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "No boss for this level yet. Please try after update."

    const/16 v2, 0x7d0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 198
    return-void
.end method
