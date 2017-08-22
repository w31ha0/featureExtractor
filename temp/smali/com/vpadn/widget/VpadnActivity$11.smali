.class Lcom/vpadn/widget/VpadnActivity$11;
.super Ljava/lang/Object;
.source "VpadnActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/widget/VpadnActivity;->onWebViewLoadPageFinish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vpadn/widget/VpadnActivity;


# direct methods
.method constructor <init>(Lcom/vpadn/widget/VpadnActivity;)V
    .locals 0

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/vpadn/widget/VpadnActivity$11;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$11;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->e(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$11;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->o(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1041
    const-string v0, "VponActivity"

    const-string v1, "REMOVE mProgressBar"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$11;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->e(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity$11;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v1}, Lcom/vpadn/widget/VpadnActivity;->o(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method
