.class public final Landroid/support/v7/media/MediaRouter$ProviderInfo;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# instance fields
.field private mDescriptor:Landroid/support/v7/media/MediaRouteProviderDescriptor;

.field private final mMetadata:Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

.field private final mProviderInstance:Landroid/support/v7/media/MediaRouteProvider;

.field private final mRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/media/MediaRouteProvider;)V
    .locals 1

    .prologue
    .line 1662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    .line 1663
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mProviderInstance:Landroid/support/v7/media/MediaRouteProvider;

    .line 1664
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteProvider;->getMetadata()Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mMetadata:Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    .line 1665
    return-void
.end method

.method static synthetic access$400(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Landroid/support/v7/media/MediaRouteProvider;
    .locals 1

    .prologue
    .line 1653
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mProviderInstance:Landroid/support/v7/media/MediaRouteProvider;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1653
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method findRouteByDescriptorId(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1721
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1722
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1723
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$100(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1727
    :goto_1
    return v0

    .line 1722
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1727
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 1686
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mMetadata:Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1679
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mMetadata:Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;
    .locals 1

    .prologue
    .line 1671
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    .line 1672
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mProviderInstance:Landroid/support/v7/media/MediaRouteProvider;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MediaRouter.RouteProviderInfo{ packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateDescriptor(Landroid/support/v7/media/MediaRouteProviderDescriptor;)Z
    .locals 1

    .prologue
    .line 1713
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mDescriptor:Landroid/support/v7/media/MediaRouteProviderDescriptor;

    if-eq v0, p1, :cond_0

    .line 1714
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$ProviderInfo;->mDescriptor:Landroid/support/v7/media/MediaRouteProviderDescriptor;

    .line 1715
    const/4 v0, 0x1

    .line 1717
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
