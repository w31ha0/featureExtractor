.class Lcom/netflix/mediaclient/ui/common/LanguageSelector$4;
.super Ljava/lang/Object;
.source "LanguageSelector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/common/LanguageSelector;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/common/LanguageSelector;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$4;->this$0:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 186
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "Languages::cancel"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$4;->this$0:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mCallback:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;->userCanceled()V

    .line 188
    return-void
.end method
