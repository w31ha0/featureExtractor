.class Lcom/netflix/mediaclient/media/BookmarkStore$2;
.super Ljava/lang/Object;
.source "BookmarkStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/media/BookmarkStore;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/BookmarkStore;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/netflix/mediaclient/media/BookmarkStore$2;->this$0:Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore$2;->this$0:Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/BookmarkStore;->access$400(Lcom/netflix/mediaclient/media/BookmarkStore;)V

    .line 136
    return-void
.end method
