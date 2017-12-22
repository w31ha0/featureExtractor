.class Lcom/netflix/mediaclient/ui/voip/DialerScreen$6;
.super Ljava/lang/Object;
.source "DialerScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$6;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$6;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$800(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$6;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$900(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 554
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$6;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$900(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 559
    :goto_0
    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$6;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$900(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 557
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$6;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$900(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0
.end method
