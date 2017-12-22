.class Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$3;
.super Ljava/lang/Object;
.source "StandardSlidingMenu.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$3;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationsListUpdated(Z)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$3;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->access$200(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;Z)V

    .line 170
    return-void
.end method
