.class final Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils$1;
.super Ljava/lang/Object;
.source "OfflineImageUtils.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;


# instance fields
.field final synthetic val$localFilePath:Ljava/lang/String;

.field final synthetic val$service:Lcom/netflix/mediaclient/service/NetflixService;

.field final synthetic val$src:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/NetflixService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils$1;->val$service:Lcom/netflix/mediaclient/service/NetflixService;

    iput-object p2, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils$1;->val$src:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils$1;->val$localFilePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onResponse(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils$1;->val$service:Lcom/netflix/mediaclient/service/NetflixService;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils$1;->val$src:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils$1;->val$localFilePath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils;->access$000(Lcom/netflix/mediaclient/service/NetflixService;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method
