.class Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnCancel;
.super Ljava/lang/Object;
.source "AgeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnCancel;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$1;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnCancel;-><init>(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 175
    const-string/jumbo v0, "nf_age"

    const-string/jumbo v1, "onCancel button"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnCancel;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->access$200(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)V

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnCancel;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->access$300(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)V

    .line 178
    return-void
.end method
