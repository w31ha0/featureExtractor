.class Lcom/vpadn/widget/VpadnActivity$6;
.super Ljava/lang/Object;
.source "VpadnActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/widget/VpadnActivity;->b(Z)V
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
    .line 774
    iput-object p1, p0, Lcom/vpadn/widget/VpadnActivity$6;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$6;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->e(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$6;->a:Lcom/vpadn/widget/VpadnActivity;

    .line 777
    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->m(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$6;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->e(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity$6;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v1}, Lcom/vpadn/widget/VpadnActivity;->m(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 779
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$6;->a:Lcom/vpadn/widget/VpadnActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vpadn/widget/VpadnActivity;->a(Lcom/vpadn/widget/VpadnActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$6;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->l(Lcom/vpadn/widget/VpadnActivity;)V

    .line 783
    return-void
.end method
