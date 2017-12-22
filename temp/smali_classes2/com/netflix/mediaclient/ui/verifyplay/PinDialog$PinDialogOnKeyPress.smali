.class Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnKeyPress;
.super Ljava/lang/Object;
.source "PinDialog.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnKeyPress;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$1;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnKeyPress;-><init>(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 232
    const/16 v0, 0x43

    if-ne p2, v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v3

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnKeyPress;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->access$800(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnKeyPress;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->access$900(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Z)V

    .line 239
    check-cast p1, Landroid/widget/EditText;

    .line 240
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->access$600()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 246
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnKeyPress;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    if-nez v1, :cond_2

    .line 247
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "serviceManager is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnKeyPress;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->access$700(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Ljava/lang/String;)V

    goto :goto_0
.end method
