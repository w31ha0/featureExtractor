.class Lcom/vpadn/widget/VpadnActivity$8;
.super Ljava/lang/Object;
.source "VpadnActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/widget/VpadnActivity;->d()V
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
    .line 823
    iput-object p1, p0, Lcom/vpadn/widget/VpadnActivity$8;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$8;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-virtual {v0}, Lcom/vpadn/widget/VpadnActivity;->hasRegisterClickCloseBtnEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$8;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-virtual {v0}, Lcom/vpadn/widget/VpadnActivity;->triggerClickCloseBtnEvent()V

    .line 831
    :goto_0
    return-void

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$8;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->n(Lcom/vpadn/widget/VpadnActivity;)V

    goto :goto_0
.end method
