.class Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$FetchGenresCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "StandardSlidingMenu.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V
    .locals 1

    .prologue
    .line 624
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$FetchGenresCallback;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    .line 625
    const-string/jumbo v0, "StandardSlidingMenu"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 626
    return-void
.end method


# virtual methods
.method public onGenreListsFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 630
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onGenreListsFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 632
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Invalid status code for genres fetch"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$FetchGenresCallback;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->access$800(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    .line 647
    :goto_0
    return-void

    .line 638
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    .line 639
    :cond_1
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "No genres in response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$FetchGenresCallback;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->access$800(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    .line 641
    if-nez p1, :cond_2

    const-string/jumbo v0, "null"

    .line 642
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SPY-7985 - GenresListAdapter got null or empty genres list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 641
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 646
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$FetchGenresCallback;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->access$900(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;Ljava/util/List;)V

    goto :goto_0
.end method
