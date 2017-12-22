.class Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$4;
.super Ljava/lang/Object;
.source "EmailPasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$4;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$4;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->access$300(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$4;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->access$400(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$4;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->access$500(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V

    goto :goto_0
.end method
