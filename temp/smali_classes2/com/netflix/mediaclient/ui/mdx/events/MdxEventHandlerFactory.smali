.class public final Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;
.super Ljava/lang/Object;
.source "MdxEventHandlerFactory.java"


# instance fields
.field private handlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;->handlers:Ljava/util/Map;

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;->handlers:Ljava/util/Map;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_AUDIOSUB"

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/events/UpdateLanguageHandler;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/mdx/events/UpdateLanguageHandler;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;->handlers:Ljava/util/Map;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_CAPABILITY"

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/events/UpdateCapabilityHandler;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/mdx/events/UpdateCapabilityHandler;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;->handlers:Ljava/util/Map;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_STATE"

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/events/UpdateStateHandler;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/mdx/events/UpdateStateHandler;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;->handlers:Ljava/util/Map;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_DIALOGCANCEL"

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/events/DialogCancelHandler;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/mdx/events/DialogCancelHandler;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;->handlers:Ljava/util/Map;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_DIALOGSHOW"

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/events/DialogShowHandler;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/mdx/events/DialogShowHandler;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;->handlers:Ljava/util/Map;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_ERROR"

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/events/ErrorHandler;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/mdx/events/ErrorHandler;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;->handlers:Ljava/util/Map;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_NETWORK_CONNECTIVITY_CHANGE"

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/events/NetworkConnectivityHandler;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/mdx/events/NetworkConnectivityHandler;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;->handlers:Ljava/util/Map;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_MOVIEMETADATA_AVAILABLE"

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/events/UpdateVideoMetadataAvailableHandler;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/mdx/events/UpdateVideoMetadataAvailableHandler;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;->handlers:Ljava/util/Map;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_MOVIEMETADA"

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/events/UpdateVideoMetadataHandler;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/mdx/events/UpdateVideoMetadataHandler;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;->handlers:Ljava/util/Map;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_NOTREADY"

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/events/NotReadyHandler;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/mdx/events/NotReadyHandler;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;->handlers:Ljava/util/Map;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_READY"

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/events/ReadyHandler;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/mdx/events/ReadyHandler;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;->handlers:Ljava/util/Map;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_TARGETLIST"

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/events/UpdateTargetListHandler;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/mdx/events/UpdateTargetListHandler;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method


# virtual methods
.method public getHandler(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandler;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandlerFactory;->handlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/events/MdxEventHandler;

    return-object v0
.end method
