.class Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SignupListener;
.super Ljava/lang/Object;
.source "PostPlayForPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final GET_STARTED_URL:Ljava/lang/String; = "/getstarted"

.field private static final PLAYER_COMPLETE:I = 0x15


# instance fields
.field netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SignupListener;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SignupListener;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 185
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 196
    const-string/jumbo v1, "nextUrl"

    const-string/jumbo v2, "/getstarted"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SignupListener;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setResult(ILandroid/content/Intent;)V

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SignupListener;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    .line 199
    return-void
.end method
