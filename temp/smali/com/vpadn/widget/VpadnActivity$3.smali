.class Lcom/vpadn/widget/VpadnActivity$3;
.super Ljava/lang/Object;
.source "VpadnActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/widget/VpadnActivity;->b()V
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
    .line 469
    iput-object p1, p0, Lcom/vpadn/widget/VpadnActivity$3;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$3;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->e(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity$3;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v1}, Lcom/vpadn/widget/VpadnActivity;->d(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 472
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$3;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->f(Lcom/vpadn/widget/VpadnActivity;)V

    .line 473
    return-void
.end method
