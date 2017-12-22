.class Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify;
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
    .line 181
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$1;)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify;-><init>(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 185
    const-string/jumbo v0, "nf_age"

    const-string/jumbo v1, "verifyButton clicked - going to webview"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->access$400(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 189
    new-instance v1, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify$1;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify$1;-><init>(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 215
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify$1;->run()V

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->access$200(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)V

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog$AgeDialogOnVerify;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;->access$300(Lcom/netflix/mediaclient/ui/verifyplay/AgeDialog;)V

    .line 219
    return-void
.end method
