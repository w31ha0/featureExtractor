.class Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;
.super Ljava/lang/Object;
.source "BookmarkStore.java"


# instance fields
.field public mBookmarkMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bookmarks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/netflix/mediaclient/media/BookmarkStore;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/media/BookmarkStore;)V
    .locals 1

    .prologue
    .line 286
    iput-object p1, p0, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;->this$0:Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/media/BookmarkStore;Lcom/netflix/mediaclient/media/BookmarkStore$1;)V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;-><init>(Lcom/netflix/mediaclient/media/BookmarkStore;)V

    return-void
.end method
