.class Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter$1;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "GenreLoLoMoAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGenreLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onGenreLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;->access$000(Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;)V

    .line 39
    return-void
.end method
