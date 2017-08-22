.class Lcom/vpadn/widget/VpadnActivity$12;
.super Ljava/lang/Object;
.source "VpadnActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/widget/VpadnActivity;->onWebViewReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 1240
    iput-object p1, p0, Lcom/vpadn/widget/VpadnActivity$12;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$12;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->e(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1251
    :goto_0
    return-void

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$12;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->o(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1246
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$12;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->e(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity$12;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v1}, Lcom/vpadn/widget/VpadnActivity;->o(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1247
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$12;->a:Lcom/vpadn/widget/VpadnActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vpadn/widget/VpadnActivity;->a(Lcom/vpadn/widget/VpadnActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 1249
    :cond_1
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$12;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->e(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1250
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$12;->a:Lcom/vpadn/widget/VpadnActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vpadn/widget/VpadnActivity;->a(Lcom/vpadn/widget/VpadnActivity;Z)V

    goto :goto_0
.end method
