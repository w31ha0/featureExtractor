.class public Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryEnumerator;
.super Ljava/lang/Object;
.source "OfflineRegistry.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field mCurrentIndex:I

.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;)V
    .locals 1

    .prologue
    .line 476
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryEnumerator;->this$0:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryEnumerator;->mCurrentIndex:I

    .line 478
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    .prologue
    .line 482
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryEnumerator;->mCurrentIndex:I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryEnumerator;->this$0:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->access$000(Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextElement()Lcom/netflix/mediaclient/service/offline/registry/RegistryData;
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryEnumerator;->this$0:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->access$000(Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryEnumerator;->mCurrentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryEnumerator;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeImpl;->mRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    return-object v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryEnumerator;->nextElement()Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    move-result-object v0

    return-object v0
.end method
