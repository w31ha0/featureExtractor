.class Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView$CharacterVideoDetailsClickListener;
.super Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;
.source "BarkerKidsCharacterView.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView$CharacterVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;

    .line 70
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V

    .line 71
    return-void
.end method


# virtual methods
.method protected launchDetailsActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    const-string/jumbo v1, "extra_kids_color_id"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView$CharacterVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->access$000(Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string/jumbo v1, "DeetsClickListener"

    invoke-static {p1, p2, p3, v1, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 77
    return-void
.end method
