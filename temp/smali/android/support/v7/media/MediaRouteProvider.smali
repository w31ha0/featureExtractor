.class public abstract Landroid/support/v7/media/MediaRouteProvider;
.super Ljava/lang/Object;
.source "MediaRouteProvider.java"


# instance fields
.field private mCallback:Landroid/support/v7/media/MediaRouteProvider$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDescriptor:Landroid/support/v7/media/MediaRouteProviderDescriptor;

.field private mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

.field private final mHandler:Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;

.field private final mMetadata:Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

.field private mPendingDescriptorChange:Z

.field private mPendingDiscoveryRequestChange:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;)V
    .locals 3

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;-><init>(Landroid/support/v7/media/MediaRouteProvider;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mHandler:Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;

    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iput-object p1, p0, Landroid/support/v7/media/MediaRouteProvider;->mContext:Landroid/content/Context;

    .line 91
    if-nez p2, :cond_1

    .line 92
    new-instance v0, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;-><init>(Landroid/content/ComponentName;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mMetadata:Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_1
    iput-object p2, p0, Landroid/support/v7/media/MediaRouteProvider;->mMetadata:Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    goto :goto_0
.end method


# virtual methods
.method deliverDescriptorChanged()V
    .locals 2

    .prologue
    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mPendingDescriptorChange:Z

    .line 239
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mCallback:Landroid/support/v7/media/MediaRouteProvider$Callback;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mCallback:Landroid/support/v7/media/MediaRouteProvider$Callback;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProvider;->mDescriptor:Landroid/support/v7/media/MediaRouteProviderDescriptor;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/media/MediaRouteProvider$Callback;->onDescriptorChanged(Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 242
    :cond_0
    return-void
.end method

.method deliverDiscoveryRequestChanged()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mPendingDiscoveryRequestChange:Z

    .line 167
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-virtual {p0, v0}, Landroid/support/v7/media/MediaRouteProvider;->onDiscoveryRequestChanged(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V

    .line 168
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getDescriptor()Landroid/support/v7/media/MediaRouteProviderDescriptor;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mDescriptor:Landroid/support/v7/media/MediaRouteProviderDescriptor;

    return-object v0
.end method

.method public final getDiscoveryRequest()Landroid/support/v7/media/MediaRouteDiscoveryRequest;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mHandler:Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;

    return-object v0
.end method

.method public final getMetadata()Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mMetadata:Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    return-object v0
.end method

.method public onCreateRouteController(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;
    .locals 2

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "routeId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateRouteController(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;
    .locals 2

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "routeId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    if-nez p2, :cond_1

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "routeGroupId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/media/MediaRouteProvider;->onCreateRouteController(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v0

    return-object v0
.end method

.method public onDiscoveryRequestChanged(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public final setCallback(Landroid/support/v7/media/MediaRouteProvider$Callback;)V
    .locals 0

    .prologue
    .line 125
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 126
    iput-object p1, p0, Landroid/support/v7/media/MediaRouteProvider;->mCallback:Landroid/support/v7/media/MediaRouteProvider$Callback;

    .line 127
    return-void
.end method

.method public final setDescriptor(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 225
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 227
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mDescriptor:Landroid/support/v7/media/MediaRouteProviderDescriptor;

    if-eq v0, p1, :cond_0

    .line 228
    iput-object p1, p0, Landroid/support/v7/media/MediaRouteProvider;->mDescriptor:Landroid/support/v7/media/MediaRouteProviderDescriptor;

    .line 229
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mPendingDescriptorChange:Z

    if-nez v0, :cond_0

    .line 230
    iput-boolean v1, p0, Landroid/support/v7/media/MediaRouteProvider;->mPendingDescriptorChange:Z

    .line 231
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mHandler:Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;->sendEmptyMessage(I)Z

    .line 234
    :cond_0
    return-void
.end method

.method public final setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 153
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .line 154
    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iput-object p1, p0, Landroid/support/v7/media/MediaRouteProvider;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .line 159
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mPendingDiscoveryRequestChange:Z

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mPendingDiscoveryRequestChange:Z

    .line 161
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider;->mHandler:Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
