.class Lcom/netflix/mediaclient/ui/common/LanguageSelector$2;
.super Ljava/lang/Object;
.source "LanguageSelector.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

.field final synthetic val$language:Lcom/netflix/mediaclient/media/Language;

.field final synthetic val$subtitleAdapter:Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/common/LanguageSelector;Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;Lcom/netflix/mediaclient/media/Language;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$2;->this$0:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$2;->val$subtitleAdapter:Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$2;->val$language:Lcom/netflix/mediaclient/media/Language;

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
    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$2;->val$subtitleAdapter:Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;->getItem(I)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$2;->val$language:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v1

    .line 139
    if-eq v1, v0, :cond_0

    .line 140
    const-string/jumbo v1, "nf_language_selector"

    const-string/jumbo v2, "Subtitle is changed, refresh subtitle list view"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$2;->val$language:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/media/Language;->setSelectedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Lcom/netflix/mediaclient/media/Subtitle;

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$2;->val$subtitleAdapter:Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;->notifyDataSetChanged()V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "Subtitle is not changed, do not refresh"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
