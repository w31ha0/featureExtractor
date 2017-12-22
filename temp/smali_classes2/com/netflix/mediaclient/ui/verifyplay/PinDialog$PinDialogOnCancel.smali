.class Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnCancel;
.super Ljava/lang/Object;
.source "PinDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnCancel;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$1;)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnCancel;-><init>(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnCancel;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->access$402(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Z)Z

    .line 196
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnCancel;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->access$500(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)V

    .line 197
    return-void
.end method
