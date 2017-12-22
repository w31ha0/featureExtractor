.class Lcom/netflix/mediaclient/ui/common/LanguageSelector$1;
.super Ljava/lang/Object;
.source "LanguageSelector.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

.field final synthetic val$audioAdapter:Lcom/netflix/mediaclient/ui/common/LanguageSelector$AudioAdapter;

.field final synthetic val$language:Lcom/netflix/mediaclient/media/Language;

.field final synthetic val$subtitleAdapter:Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/common/LanguageSelector;Lcom/netflix/mediaclient/ui/common/LanguageSelector$AudioAdapter;Lcom/netflix/mediaclient/media/Language;Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$1;->this$0:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$1;->val$audioAdapter:Lcom/netflix/mediaclient/ui/common/LanguageSelector$AudioAdapter;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$1;->val$language:Lcom/netflix/mediaclient/media/Language;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$1;->val$subtitleAdapter:Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$1;->val$audioAdapter:Lcom/netflix/mediaclient/ui/common/LanguageSelector$AudioAdapter;

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$AudioAdapter;->getItem(I)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$1;->val$language:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v1

    .line 119
    if-eq v1, v0, :cond_0

    .line 120
    const-string/jumbo v1, "nf_language_selector"

    const-string/jumbo v2, "Audio is changed, refresh both views"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$1;->val$language:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/media/Language;->setSelectedAudio(Lcom/netflix/mediaclient/media/AudioSource;)Lcom/netflix/mediaclient/media/AudioSource;

    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$1;->val$audioAdapter:Lcom/netflix/mediaclient/ui/common/LanguageSelector$AudioAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$AudioAdapter;->notifyDataSetChanged()V

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$1;->val$subtitleAdapter:Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;->notifyDataSetChanged()V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "Audio is not changed, do not refresh"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
