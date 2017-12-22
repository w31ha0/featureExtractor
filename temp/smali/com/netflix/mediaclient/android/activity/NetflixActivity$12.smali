.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$12;
.super Ljava/lang/Object;
.source "NetflixActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 2058
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$12;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$12;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1700(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 2062
    return-void
.end method
