.class Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$4;
.super Ljava/lang/Object;
.source "CastPlayerControlsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)V
    .locals 0

    .prologue
    .line 908
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public languageChanged(Lcom/netflix/mediaclient/media/Language;Z)V
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1300(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/l10n/LanguageUtils;->saveUserChoice(Landroid/content/Context;Lcom/netflix/mediaclient/media/Language;)V

    .line 916
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1300(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->changeLanguage(Lcom/netflix/mediaclient/media/Language;)V

    .line 917
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1300(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->requestAudioAndSubtitleData()V

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1400(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)V

    .line 920
    return-void
.end method

.method public updateDialog(Landroid/app/Dialog;)V
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    const-string/jumbo v1, "Updating dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Ljava/lang/String;)V

    .line 925
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$500(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->updateVisibleDialog(Landroid/app/Dialog;)V

    .line 926
    return-void
.end method

.method public userCanceled()V
    .locals 2

    .prologue
    .line 930
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    const-string/jumbo v1, "User canceled selection"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Ljava/lang/String;)V

    .line 931
    return-void
.end method

.method public wasPlaying()Z
    .locals 1

    .prologue
    .line 935
    const/4 v0, 0x0

    return v0
.end method
