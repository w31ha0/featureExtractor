.class Lcom/netflix/mediaclient/ui/details/CopyrightView$1;
.super Ljava/lang/Object;
.source "CopyrightView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/CopyrightView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/CopyrightView;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView$1;->this$0:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView$1;->this$0:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->access$000(Lcom/netflix/mediaclient/ui/details/CopyrightView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView$1;->this$0:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->access$000(Lcom/netflix/mediaclient/ui/details/CopyrightView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 107
    const/4 v1, 0x3

    .line 109
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView$1;->this$0:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView$1;->this$0:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->access$200(Lcom/netflix/mediaclient/ui/details/CopyrightView;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    mul-int/2addr v1, v3

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->access$102(Lcom/netflix/mediaclient/ui/details/CopyrightView;I)I

    .line 111
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/CopyrightView$1;->this$0:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->access$000(Lcom/netflix/mediaclient/ui/details/CopyrightView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/details/CopyrightView$1$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/CopyrightView$1$1;-><init>(Lcom/netflix/mediaclient/ui/details/CopyrightView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    :cond_0
    return-void
.end method
