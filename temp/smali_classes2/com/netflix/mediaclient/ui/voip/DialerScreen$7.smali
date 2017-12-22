.class Lcom/netflix/mediaclient/ui/voip/DialerScreen$7;
.super Ljava/lang/Object;
.source "DialerScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

.field final synthetic val$dialPadVisible:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;Z)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$7;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$7;->val$dialPadVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 661
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$7;->val$dialPadVisible:Z

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$7;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$1000(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200e0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 663
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$7;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$1000(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 668
    :goto_0
    return-void

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$7;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$1000(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200e1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 666
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$7;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$1000(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0
.end method
