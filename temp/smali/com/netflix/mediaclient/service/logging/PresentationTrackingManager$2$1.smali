.class Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$2$1;
.super Ljava/lang/Object;
.source "PresentationTrackingManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/data/DataRepository$LoadedCallback;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$2;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$2$1;->this$1:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;)V
    .locals 2

    .prologue
    .line 248
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$2$1;->this$1:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$2;->this$0:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->access$200(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;[Lcom/netflix/mediaclient/util/data/DataRepository$Entry;)V

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    const-string/jumbo v0, "nf_presentation"

    const-string/jumbo v1, "No saved payloads found."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
