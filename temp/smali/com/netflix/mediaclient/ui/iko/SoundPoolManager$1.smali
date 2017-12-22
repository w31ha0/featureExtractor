.class Lcom/netflix/mediaclient/ui/iko/SoundPoolManager$1;
.super Ljava/lang/Object;
.source "SoundPoolManager.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/SoundPoolManager$1;->this$0:Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/SoundPoolManager$1;->this$0:Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;

    iget-object v1, v0, Lcom/netflix/mediaclient/ui/iko/SoundPoolManager;->soundIdToLoadedMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
