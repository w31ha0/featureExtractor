.class Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$2;
.super Ljava/lang/Object;
.source "EmailPasswordFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$2;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isLoginId(I)Z
    .locals 1

    .prologue
    .line 189
    const v0, 0x7f0c0012

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$2;->isLoginId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$2;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->access$100(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V

    .line 183
    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
