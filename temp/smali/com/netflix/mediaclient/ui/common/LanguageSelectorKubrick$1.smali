.class Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick$1;
.super Ljava/lang/Object;
.source "LanguageSelectorKubrick.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;

.field final synthetic val$bWasPlaying:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;Z)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick$1;->this$0:Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick$1;->val$bWasPlaying:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick$1;->this$0:Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;->mCallback:Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick$1;->this$0:Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;->language:Lcom/netflix/mediaclient/media/Language;

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick$1;->val$bWasPlaying:Z

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;->languageChanged(Lcom/netflix/mediaclient/media/Language;Z)V

    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick$1;->this$0:Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorKubrick;->mController:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeDialogFrag()V

    .line 62
    return-void
.end method
