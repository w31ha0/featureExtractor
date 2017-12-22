.class Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnDone;
.super Ljava/lang/Object;
.source "PinDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnDone;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$1;)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnDone;-><init>(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 208
    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    .line 224
    :goto_0
    return v0

    .line 213
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->access$600()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 215
    const/4 v0, 0x1

    goto :goto_0

    .line 218
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnDone;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    if-nez v2, :cond_2

    .line 219
    const-string/jumbo v1, "nf_pin"

    const-string/jumbo v2, "serviceManager is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnDone;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->access$700(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Ljava/lang/String;)V

    goto :goto_0
.end method
