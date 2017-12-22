.class Lcom/netflix/mediaclient/ui/common/LanguageSelector$3;
.super Ljava/lang/Object;
.source "LanguageSelector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

.field final synthetic val$bWasPlaying:Z

.field final synthetic val$dialog:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageAlertDialog;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/common/LanguageSelector;ZLcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageAlertDialog;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$3;->this$0:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$3;->val$bWasPlaying:Z

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$3;->val$dialog:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 174
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "Languages::apply"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$3;->this$0:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->mCallback:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$3;->this$0:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->language:Lcom/netflix/mediaclient/media/Language;

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$3;->val$bWasPlaying:Z

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;->languageChanged(Lcom/netflix/mediaclient/media/Language;Z)V

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$3;->val$dialog:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageAlertDialog;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageAlertDialog;->dismiss()V

    .line 177
    return-void
.end method
