.class public abstract Lcom/netflix/mediaclient/ui/player/PlayerSection;
.super Lcom/netflix/mediaclient/ui/player/Section;
.source "PlayerSection.java"


# instance fields
.field protected final playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field protected final tablet:Z


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/Section;-><init>(Landroid/app/Activity;)V

    .line 23
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerSection;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 24
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerSection;->tablet:Z

    .line 25
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method
