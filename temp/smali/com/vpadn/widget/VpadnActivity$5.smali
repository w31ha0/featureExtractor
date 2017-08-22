.class Lcom/vpadn/widget/VpadnActivity$5;
.super Ljava/lang/Object;
.source "VpadnActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/widget/VpadnActivity;->c(Landroid/os/Bundle;)V
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
    .line 659
    iput-object p1, p0, Lcom/vpadn/widget/VpadnActivity$5;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$5;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->k(Lcom/vpadn/widget/VpadnActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$5;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->l(Lcom/vpadn/widget/VpadnActivity;)V

    .line 664
    :cond_0
    return-void
.end method
