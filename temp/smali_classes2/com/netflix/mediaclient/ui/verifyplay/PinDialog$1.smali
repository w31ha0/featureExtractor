.class Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$1;
.super Landroid/text/method/LinkMovementMethod;
.source "PinDialog.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$1;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$1;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->access$200(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$1;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 110
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
