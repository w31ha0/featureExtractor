.class Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$1;
.super Ljava/lang/Object;
.source "EmailPasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$1;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 167
    if-eqz p2, :cond_0

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$1;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->access$000(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 170
    :cond_0
    return-void
.end method
