.class Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b$1;
.super Ljava/lang/Object;
.source "TWMAdActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;->disableCloseButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;)Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->j(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;)Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->j(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;)Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Z)V

    .line 397
    :cond_0
    return-void
.end method
